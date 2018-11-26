# Code Book

This code book describes the data fields in 'tidy_data_means.csv'
The dataset is measures of activity from subjects wearing smartwatches
The data is created by the R script 'run_analysis.R' 

## Columns 

* subject      : The subject id (range 1:30)
* activitylabel: The activity type (6 different activities measured:"LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"  
* meanvalue    : The mean value of the subjects activity for each type of measurement
* measure      : The type of measurement (obtained from accelerometer and gyroscope 3-axial raw signals from smartwatches):

 [1] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyAccMean,gravity)"          "angle(tBodyGyroJerkMean,gravityMean)"
 [4] "angle(tBodyGyroMean,gravityMean)"     "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
 [7] "angle(Z,gravityMean)"                 "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[10] "fBodyAcc-mean()-Z"                    "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[13] "fBodyAcc-meanFreq()-Z"                "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                    
[16] "fBodyAcc-std()-Z"                     "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[19] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[22] "fBodyAccJerk-meanFreq()-Z"            "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                
[25] "fBodyAccJerk-std()-Z"                 "fBodyAccMag-mean()"                   "fBodyAccMag-meanFreq()"              
[28] "fBodyAccMag-std()"                    "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-meanFreq()"      
[31] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-meanFreq()"     
[34] "fBodyBodyGyroJerkMag-std()"           "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-meanFreq()"         
[37] "fBodyBodyGyroMag-std()"               "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                  
[40] "fBodyGyro-mean()-Z"                   "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[43] "fBodyGyro-meanFreq()-Z"               "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                   
[46] "fBodyGyro-std()-Z"                    "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
[49] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                    
[52] "tBodyAcc-std()-Z"                     "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
[55] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                
[58] "tBodyAccJerk-std()-Z"                 "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
[61] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                    "tBodyGyro-mean()-X"                  
[64] "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                    "tBodyGyroJerk-mean()-X"              
[70] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[73] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"                "tBodyGyroJerkMag-mean()"             
[76] "tBodyGyroJerkMag-std()"               "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                  
[79] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                
[82] "tGravityAcc-std()-X"                  "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[85] "tGravityAccMag-mean()"                "tGravityAccMag-std()" 
