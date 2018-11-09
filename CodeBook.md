Code book for the Coursera Getting and Cleaning Data course project


Source of the data
------------------
The dataset stored tidy_data.txt has been derived from the following dataset:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.


Transformations
---------------
You may have a look at the README.md file of this repository which contains information on the script that was used to produce this dataset.


The following transformations were applied to the source data:
The training and test sets were merged to create one data set.
Each measurement containing mean and standard deviation a median of the values for each subject and activity was extrated
The activity IDs, were replaced by more descriptive activity names
The columns for the measurement were added, as of from feature.txt
For each subject and activity, the average of each measurement was computed and ouputed in tidy_data.txt, a text file, containing space-separated values.


tidy_data.txt dataset 
---------------------

For each subject and activity of the UCI HAR dataset, this dataset contains the mean and standart deviation of each measurement types.
The first row of the dataset contains the column names:
 [1] "Subject"                       
 [2] "Activity"                     
 [3] "tBodyAcc-mean-X"               
 [4] "tBodyAcc-mean-Y"              
 [5] "tBodyAcc-mean-Z"               
 [6] "tBodyAcc-std-X"               
 [7] "tBodyAcc-std-Y"                
 [8] "tBodyAcc-std-Z"               
 [9] "tGravityAcc-mean-X"            
 [10] "tGravityAcc-mean-Y"           
[11] "tGravityAcc-mean-Z"            
[12] "tGravityAcc-std-X"            
[13] "tGravityAcc-std-Y"             
[14] "tGravityAcc-std-Z"            
[15] "tBodyAccJerk-mean-X"           
[16] "tBodyAccJerk-mean-Y"          
[17] "tBodyAccJerk-mean-Z"           
[18] "tBodyAccJerk-std-X"           
[19] "tBodyAccJerk-std-Y"            
[20] "tBodyAccJerk-std-Z"           
[21] "tBodyGyro-mean-X"              
[22] "tBodyGyro-mean-Y"             
[23] "tBodyGyro-mean-Z"              
[24] "tBodyGyro-std-X"              
[25] "tBodyGyro-std-Y"               
[26] "tBodyGyro-std-Z"              
[27] "tBodyGyroJerk-mean-X"          
[28] "tBodyGyroJerk-mean-Y"         
[29] "tBodyGyroJerk-mean-Z"          
[30] "tBodyGyroJerk-std-X"          
[31] "tBodyGyroJerk-std-Y"           
[32] "tBodyGyroJerk-std-Z"          
[33] "tBodyAccMag-mean"              
[34] "tBodyAccMag-std"              
[35] "tGravityAccMag-mean"           
[36] "tGravityAccMag-std"           
[37] "tBodyAccJerkMag-mean"          
[38] "tBodyAccJerkMag-std"          
[39] "tBodyGyroMag-mean"             
[40] "tBodyGyroMag-std"             
[41] "tBodyGyroJerkMag-mean"         
[42] "tBodyGyroJerkMag-std"         
[43] "fBodyAcc-mean-X"               
[44] "fBodyAcc-mean-Y"              
[45] "fBodyAcc-mean-Z"               
[46] "fBodyAcc-std-X"               
[47] "fBodyAcc-std-Y"               
[48] "fBodyAcc-std-Z"               
[49] "fBodyAcc-meanFreq-X"           
[50] "fBodyAcc-meanFreq-Y"          
[51] "fBodyAcc-meanFreq-Z"           
[52] "fBodyAccJerk-mean-X"          
[53] "fBodyAccJerk-mean-Y"           
[54] "fBodyAccJerk-mean-Z"          
[55] "fBodyAccJerk-std-X"            
[56] "fBodyAccJerk-std-Y"           
[57] "fBodyAccJerk-std-Z"            
[58] "fBodyAccJerk-meanFreq-X"      
[59] "fBodyAccJerk-meanFreq-Y"       
[60] "fBodyAccJerk-meanFreq-Z"      
[61] "fBodyGyro-mean-X"              
[62] "fBodyGyro-mean-Y"             
[63] "fBodyGyro-mean-Z"              
[64] "fBodyGyro-std-X"              
[65] "fBodyGyro-std-Y"               
[66] "fBodyGyro-std-Z"              
[67] "fBodyGyro-meanFreq-X"          
[68] "fBodyGyro-meanFreq-Y"         
[69] "fBodyGyro-meanFreq-Z"          
[70] "fBodyAccMag-mean"             
[71] "fBodyAccMag-std"               
[72] "fBodyAccMag-meanFreq"         
[73] "fBodyBodyAccJerkMag-mean"      
[74] "fBodyBodyAccJerkMag-std"      
[75] "fBodyBodyAccJerkMag-meanFreq"  
[76] "fBodyBodyGyroMag-mean"        
[77] "fBodyBodyGyroMag-std"          
[78] "fBodyBodyGyroMag-meanFreq"    
[79] "fBodyBodyGyroJerkMag-mean"     
[80] "fBodyBodyGyroJerkMag-std"     
[81] "fBodyBodyGyroJerkMag-meanFreq"

The sujects are IDs of each of the 30 volunteers who took part of the experiment

The activities are taking one of the following values
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The 79 following colums are containing the average of the different types of measurements
