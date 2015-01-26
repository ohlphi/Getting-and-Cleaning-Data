#README

##PREPARING TIDY DATA

###SUMMARY
The purpose of this assignment is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The full description of the data used in this assignment can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
The data used for this assignment can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Based on the data files provided you should create one R script called run_analysis.R that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###INSTALLATION
* Create a directory folder for this assignment.
* Download the script `run_analysis.R` to the directory folder.
* Start R and set the directory to your directory folder.
* Source the script in `run_analysis.R` in R: `source("run_analysis.R")`
* Type in the command in R: `runThis()`. When doing this the UCI HAR Dataset folder will be downloaded to the directory with its files.
* The independent tidy data set, `mean_data.txt`, will be created when running `runThis()` and saved in the directory folder, using the files in the UCI HAR Dataset.


###ADDITIONAL INFORMATION
* Make sure to have the "dplyr" package installed, as the script depends on having this package installed. If not installed, install the package by typing in R: `install.packages("dplyr")` before running the script.
* Also, in case you are sitting on a Windows laptop, remove `method = "curl"` on row 8 in the `run_analysis.R` script.

