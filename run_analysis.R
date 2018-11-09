library(dplyr)

#Merges the training and the test sets to create one data set.


subject_train <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

X_test <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")


y_train <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

subject_all<- rbind(subject_train,subject_test)
X_all<- rbind(X_train,X_test)
y_all<- rbind(y_train,y_test)

#Extracts only the measurements on the mean and standard deviation for each measurement. 

featureNames <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")

featuresToKeep <- grepl("mean|std", featureNames$V2)
subset_X_all <- X_all[, featuresToKeep]

#Uses descriptive activity names to name the activities in the data set

activityLabels <- read.table("C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
colnames(activityLabels) <- c("activityId", "activityLabel")
colnames(subject_all)<-c("Subject")
colnames(y_all)<-c("Activity")

#Appropriately labels the data set with descriptive variable names. 

names(subset_X_all) <- gsub("\\(|\\)", "", (featureNames[featuresToKeep, 2]))

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyDataSet <- cbind(subject_all, subset_X_all, y_all)
tidyDataSetMeans <- tidyDataSet %>% 
  
  group_by(Subject, Activity) %>%
  
  summarise_all(funs(mean))

write.table(tidyDataSetMeans, "C:/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/tidy_data.txt", row.names = FALSE, quote = FALSE)
