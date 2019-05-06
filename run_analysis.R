#### Course Project - Getting and Cleaning Data


#### Step 0: preprations

## Step 0.1: load libraries
library(dplyr)
library(tidyverse)


## Step 0.2: download and unzip data
myURL <- paste("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",sep = "")
myZip <- "UCI_HAR_Dataset.zip"


if(!file.exists(myZip)) { 
    download.file(myURL, myZip, mode = "wb") 
   } 

datapath <- "UCI HAR Dataset" 
if (!file.exists(datapath)) { 
    unzip(myZip) 
  } 

## Step 0.3: read data into R

# read training data 
trainSubjects <- read.table(file.path(datapath, "train", "subject_train.txt")) 
trainX <- read.table(file.path(datapath, "train", "X_train.txt")) 
trainY <- read.table(file.path(datapath, "train", "y_train.txt")) 

# read test data 
testSubjects <- read.table(file.path(datapath, "test", "subject_test.txt")) 
testX <- read.table(file.path(datapath, "test", "X_test.txt")) 
testY <- read.table(file.path(datapath, "test", "y_test.txt")) 

# read features
features <- read.table(file.path(datapath, "features.txt"), as.is = TRUE) 


#### Step 1: merge data sets into one and give column names

train <- cbind(trainSubjects,trainY,trainX )
rm(list = c("trainY","trainX","trainSubjects"))

test <- cbind(testSubjects,testY,testX)
rm(list = c("testY","testX","testSubjects"))

dta_merged <- rbind(train,test)
rm("train","test")

colnames(dta_merged) <- c("subject","activity", features[,2])



#### Step2: choose means and std columns
 
Keep <- grepl("subject|activity|mean|std", colnames(dta_merged))
dta_clean <- dta_merged[,Keep]
                       

#### Step 3: use descriptive activity names to name the activities in the data set

actlabs <- read.table(file.path(datapath, "activity_labels.txt")) 
colnames(actlabs) <- c("activityId", "activityLabel") 
levels(dta_clean$activity) <- actlabs$activityLabel


#### Step 4: label with descriptive variable names
clean_colnames <- colnames(dta_clean)
# remove ()
clean_colnames <- gsub("[\\(\\)-]"," ",clean_colnames)

# substitute t and f by "TimeDom" and "FrequencyDom" domain variables
clean_colnames <- gsub("^t", "TimeDom ", clean_colnames) 
clean_colnames <- gsub("^f", "FrequencyDom ", clean_colnames) 

colnames(dta_clean) <- clean_colnames

#### Step 5: create tidy data set with the average of each activity and each subject and save as tidy_data.txt
tidy_data_means <- dta_clean %>%  
   group_by(subject, activity) %>% 
    summarise_at(vars(-c(activity, subject)), funs(mean(., na.rm=TRUE)))

 
write.table(tidy_data_means, file = "tidy_data.txt", row.names = FALSE, quote = FALSE) 
