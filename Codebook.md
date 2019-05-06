# Code book for data including variables, transformation and cleaning processes

## Data Source
Data are collected from the accelerometers from the Samsung Galaxy S smartphone and are available here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables
### Identifiers
+ subject: ID of the subject
+ activity: activity performed when  measurement was taken
### Activity Labels
WALKING (value 1): subject was walking
WALKING_UPSTAIRS (value 2): subject was walking upstairs
WALKING_DOWNSTAIRS (value 3): subject was walking downstairs
SITTING (value 4): subject was sitting
STANDING (value 5): subject was standing
LAYING (value 6): subject was laying down


## Transformations/ Data Cleaning
Any processing applied to the data can be found in the code run_analysis.R.

0. Data preparation including download, unzipping of the data and reading into R
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names.
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.
