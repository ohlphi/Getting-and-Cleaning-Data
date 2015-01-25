#CODEBOOK

This document provided information about the generated sets created by run_analysis.R. 

##DATA
The function `runThis()` from the `run_analysis.R` writes one data set, named `mean_data.txt`. This data is the result of cleaning and tidying of the original data provided when downloading the UCI HAR Dataset. 

###Data set `mean_data.txt`
The `mean_data.txt` is the outcome of cleaning and tidying of the original data. 
The data is based on observation of 30 subjects, performing 6 different activities, which have been divided into a training set and test set. More info can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The setup of the file and its variables is the following: 

1. `Subject`: Denoting the subject number that performed the activity. From the training and test sets there are 30 subjects. 
2. `Activity`: Denoting the activity the subject performed. There are 6 activities listed in the data:
	 * SITTING
	 * STANDING
	 * LAYING
	 * WALKING
	 * WALKING UPSTAIRS
	 * WALKING DOWNSTAIRS

3. `Mean|StandDev`: From the original data set, only the estimated mean and standard deviation were used, creating 66 variables. The features names from the original data were rewritten, based on the following conditional: 
	* t was rewritten into Time.
	* f was rewritten into Frequency.
	* BodyBody was replaced by Body.
	* -mean() was rewritten to Mean.
	* -std() was rewritten to StandDev. 
	* All "-" were replaced by "".
4. The outcome of all the variables can be found as following order:
	1. "Subject"                          
	2. "Activity"                        
	3. "TimeBodyAccMeanX"                 
	4. "TimeBodyAccMeanY"                
	5. "TimeBodyAccMeanZ"                 
	6. "TimeBodyAccStandDevX"            
	7. "TimeBodyAccStandDevY"             
	8. "TimeBodyAccStandDevZ"            
	9. "TimeGravityAccMeanX"              
	10. "TimeGravityAccMeanY"             
	11. "TimeGravityAccMeanZ"              
	12. "TimeGravityAccStandDevX"         
	13. "TimeGravityAccStandDevY"          
	14. "TimeGravityAccStandDevZ"         
	15. "TimeBodyAccJerkMeanX"             
	16. "TimeBodyAccJerkMeanY"            
	17. "TimeBodyAccJerkMeanZ"             
	18. "TimeBodyAccJerkStandDevX"        
	19. "TimeBodyAccJerkStandDevY"         
	20. "TimeBodyAccJerkStandDevZ"        
	21. "TimeBodyGyroMeanX"                
	22. "TimeBodyGyroMeanY"               
	23. "TimeBodyGyroMeanZ"                
	24. "TimeBodyGyroStandDevX"           
	25. "TimeBodyGyroStandDevY"            
	26. "TimeBodyGyroStandDevZ"           
	27. "TimeBodyGyroJerkMeanX"            
	28. "TimeBodyGyroJerkMeanY"           
	29. "TimeBodyGyroJerkMeanZ"            
	30. "TimeBodyGyroJerkStandDevX"       
	31. "TimeBodyGyroJerkStandDevY"        
	32. "TimeBodyGyroJerkStandDevZ"       
	33. "TimeBodyAccMagMean"               
	34. "TimeBodyAccMagStandDev"          
	35. "TimeGravityAccMagMean"            
	36. "TimeGravityAccMagStandDev"       
	37. "TimeBodyAccJerkMagMean"           
	38. "TimeBodyAccJerkMagStandDev"      
	39. "TimeBodyGyroMagMean"              
	40. "TimeBodyGyroMagStandDev"         
	41. "TimeBodyGyroJerkMagMean"          
	42. "TimeBodyGyroJerkMagStandDev"     
	43. "FrequencyBodyAccMeanX"            
	44. "FrequencyBodyAccMeanY"           
	45. "FrequencyBodyAccMeanZ"            
	46. "FrequencyBodyAccStandDevX"       
	47. "FrequencyBodyAccStandDevY"        
	48. "FrequencyBodyAccStandDevZ"       
	49. "FrequencyBodyAccJerkMeanX"        
	50. "FrequencyBodyAccJerkMeanY"       
	51. "FrequencyBodyAccJerkMeanZ"        
	52. "FrequencyBodyAccJerkStandDevX"   
	53. "FrequencyBodyAccJerkStandDevY"    
	54. "FrequencyBodyAccJerkStandDevZ"   
	55. "FrequencyBodyGyroMeanX"           
	56. "FrequencyBodyGyroMeanY"          
	57. "FrequencyBodyGyroMeanZ"           
	58. "FrequencyBodyGyroStandDevX"      
	59. "FrequencyBodyGyroStandDevY"       
	60. "FrequencyBodyGyroStandDevZ"      
	61. "FrequencyBodyAccMagMean"          
	62. "FrequencyBodyAccMagStandDev"     
	63. "FrequencyBodyAccJerkMagMean"      
	64. "FrequencyBodyAccJerkMagStandDev" 
	65. "FrequencyBodyGyroMagMean"         
	66. "FrequencyBodyGyroMagStandDev"    
	67. "FrequencyBodyGyroJerkMagMean"     
	68. "FrequencyBodyGyroJerkMagStandDev"


## Original data set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

More info on the data can be found on the [UCI Machine learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
