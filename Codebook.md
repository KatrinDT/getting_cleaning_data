# Code book for data including variables, transformation and cleaning processes

## Data Source
Data are collected from the accelerometers from the Samsung Galaxy S smartphone and are available here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables

## Transformations/ Data Cleaning
Any processing applied to the data can be found in the code run_analysis.R.
0. Data prepration including download, unzipping of the data and reading into R
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names.
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.
