# Code book for data including variables, transformation and cleaning processes

## Data Source
Data are collected from the accelerometers from the Samsung Galaxy S smartphone.

Details: The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Data are available here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables
### Identifiers
+ subject: ID of the subject
+ activity: activity performed when  measurement was taken
### Activity Labels
+WALKING (value 1): subject was walking
+WALKING_UPSTAIRS (value 2): subject was walking upstairs
+WALKING_DOWNSTAIRS (value 3): subject was walking downstairs
+SITTING (value 4): subject was sitting
+STANDING (value 5): subject was standing
+LAYING (value 6): subject was laying down


## Transformations/ Data Cleaning
Any processing applied to the data can be found in the code run_analysis.R.

0. Data preparation including download, unzipping of the data and reading into R
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names.
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.
