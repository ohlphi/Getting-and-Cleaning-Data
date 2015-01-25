runThis <- function() {      
      #Load the dplyr package
      library(dplyr)
      
      #Download the zipfile with all the information.
      temp <- tempfile()
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileUrl, temp, method = "curl")
      unzip(temp)
      unlink(temp)
      
      #Extract all the information from the training and test sets
      x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
      y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
      subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
      
      x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
      y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
      subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
      
      #Use rbind to combine the id's from both the test and the training sets.
      x_data <- rbind(x_train, x_test)
      y_data <- rbind(y_train, y_test)
      subject_data <- rbind(subject_train, subject_test)
      
      features <- read.table("UCI HAR Dataset/features.txt")
      #Name all the columns based on features
      names(x_data) <- features[,2]
      
      #Filter out which features contain mean and std and save in a new variable:
      mean_std <- grep("-(mean|std)\\(\\)", features[,2])
      
      #Overwrite and look only to the mean & std columns
      x_data <- x_data[,mean_std]
      
      #Use the activity labels to identify which activity the subject has done:
      activities <- read.table("UCI HAR Dataset/activity_labels.txt")
      names(y_data) <- "Activity"
      
      y_data$QActivity <- as.character(y_data$Activity)
      y_data$Activity[y_data$Activity == "1"] <- "WALKING"
      y_data$Activity[y_data$Activity == "2"] <- "WALKING UPSTAIRS"
      y_data$Activity[y_data$Activity == "3"] <- "WALKING DOWNSTAIRS"
      y_data$Activity[y_data$Activity == "4"] <- "SITTING"
      y_data$Activity[y_data$Activity == "5"] <- "STANDING"
      y_data$Activity[y_data$Activity == "6"] <- "LAYING"
            
      y_data <- select(y_data, Activity)
      
      names(subject_data) <- "Subject"
      all_data <- cbind(subject_data, y_data, x_data)
      
      ##Group based on Subject and Activity: 
      mean_all_data <- all_data %>%
        group_by(Subject, Activity) %>%
        summarise_each(funs(mean))
      #print
      
      #Rewrite the labels: 
      names(mean_all_data) <- gsub("^t", "Time", names(mean_all_data))
      names(mean_all_data) <- gsub("^f", "Frequency", names(mean_all_data))
      names(mean_all_data) <- gsub("BodyBody", "Body", names(mean_all_data))
      names(mean_all_data) <- gsub("-mean\\(\\)", "Mean", names(mean_all_data))
      names(mean_all_data) <- gsub("-std\\(\\)", "StandDev", names(mean_all_data))
      names(mean_all_data) <- gsub("-", "", names(mean_all_data))
      
      write.table(mean_all_data, "mean_data.txt", row.names=FALSE)
}

