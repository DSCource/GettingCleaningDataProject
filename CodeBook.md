---
title: Codebook
output: html_document
---

Original Data Source:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


#Actions
- Merge test and training data into a single data set
- Subset the data including only measurements with names that include "mean" or "std"
- Exclude any measurements with "meanfreq" in name
- For each test subject and each subject's activities, average of subset from steps 2 and 3
- Convert activity to human readable text
- Create data.frame where each row has columns "subject" "activity" "measurement averages ..."
- Write data.frame to file "mean_std_averages.txt"

*Variable*    |  *Description*
----------- | ----------------
subject  | test subject id - integer 1:30
activity  | activity - string (WALKING, WALKINGUPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
tBodyAcc-mean()-X  | measurement average -  real number 
tBodyAcc-mean()-Y  | measurement average -  real number 
tBodyAcc-mean()-Z  | measurement average -  real number 
tBodyAcc-std()-X  | measurement average -  real number 
tBodyAcc-std()-Y  | measurement average -  real number 
tBodyAcc-std()-Z  | measurement average -  real number 
tGravityAcc-mean()-X  | measurement average -  real number 
tGravityAcc-mean()-Y  | measurement average -  real number 
tGravityAcc-mean()-Z  | measurement average -  real number 
tGravityAcc-std()-X  | measurement average -  real number 
tGravityAcc-std()-Y  | measurement average -  real number 
tGravityAcc-std()-Z  | measurement average -  real number 
tBodyAccJerk-mean()-X  | measurement average -  real number 
tBodyAccJerk-mean()-Y  | measurement average -  real number 
tBodyAccJerk-mean()-Z  | measurement average -  real number 
tBodyAccJerk-std()-X  | measurement average -  real number 
tBodyAccJerk-std()-Y  | measurement average -  real number 
tBodyAccJerk-std()-Z  | measurement average -  real number 
tBodyGyro-mean()-X  | measurement average -  real number 
tBodyGyro-mean()-Y  | measurement average -  real number 
tBodyGyro-mean()-Z  | measurement average -  real number 
tBodyGyro-std()-X  | measurement average -  real number 
tBodyGyro-std()-Y  | measurement average -  real number 
tBodyGyro-std()-Z  | measurement average -  real number 
tBodyGyroJerk-mean()-X  | measurement average -  real number 
tBodyGyroJerk-mean()-Y  | measurement average -  real number 
tBodyGyroJerk-mean()-Z  | measurement average -  real number 
tBodyGyroJerk-std()-X  | measurement average -  real number 
tBodyGyroJerk-std()-Y  | measurement average -  real number 
tBodyGyroJerk-std()-Z  | measurement average -  real number 
tBodyAccMag-mean()  | measurement average -  real number 
tBodyAccMag-std()  | measurement average -  real number 
tGravityAccMag-mean()  | measurement average -  real number 
tGravityAccMag-std()  | measurement average -  real number 
tBodyAccJerkMag-mean()  | measurement average -  real number 
tBodyAccJerkMag-std()  | measurement average -  real number 
tBodyGyroMag-mean()  | measurement average -  real number 
tBodyGyroMag-std()  | measurement average -  real number 
tBodyGyroJerkMag-mean()  | measurement average -  real number 
tBodyGyroJerkMag-std()  | measurement average -  real number 
fBodyAcc-mean()-X  | measurement average -  real number 
fBodyAcc-mean()-Y  | measurement average -  real number 
fBodyAcc-mean()-Z  | measurement average -  real number 
fBodyAcc-std()-X  | measurement average -  real number 
fBodyAcc-std()-Y  | measurement average -  real number 
fBodyAcc-std()-Z  | measurement average -  real number 
fBodyAccJerk-mean()-X  | measurement average -  real number 
fBodyAccJerk-mean()-Y  | measurement average -  real number 
fBodyAccJerk-mean()-Z  | measurement average -  real number 
fBodyAccJerk-std()-X  | measurement average -  real number 
fBodyAccJerk-std()-Y  | measurement average -  real number 
fBodyAccJerk-std()-Z  | measurement average -  real number 
fBodyGyro-mean()-X  | measurement average -  real number 
fBodyGyro-mean()-Y  | measurement average -  real number 
fBodyGyro-mean()-Z  | measurement average -  real number 
fBodyGyro-std()-X  | measurement average -  real number 
fBodyGyro-std()-Y  | measurement average -  real number 
fBodyGyro-std()-Z  | measurement average -  real number 
fBodyAccMag-mean()  | measurement average -  real number 
fBodyAccMag-std()  | measurement average -  real number 
fBodyBodyAccJerkMag-mean()  | measurement average -  real number 
fBodyBodyAccJerkMag-std()  | measurement average -  real number 
fBodyBodyGyroMag-mean()  | measurement average -  real number 
fBodyBodyGyroMag-std()  | measurement average -  real number 
fBodyBodyGyroJerkMag-mean()  | measurement average -  real number 
fBodyBodyGyroJerkMag-std()  | measurement average -  real number



