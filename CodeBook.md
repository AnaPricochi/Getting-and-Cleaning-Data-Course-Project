Getting and Cleaning Data Course Project
=======

Code Book
-----------
 
### Variables
|Variable| Values | Units|
|--------|--------|------|
|SubjectId|Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.|-|
|ActivityLabel|The name of the activity under observation.|-|
|tBodyAcc-mean()-XYZ|Mean body acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-std()-XYZ|Standard deviation of body acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-mean()-XYZ|Mean gravity acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-std()-XYZ|Standard deviation of gravity acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-mean()-XYZ|Mean body linear acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-std()-XYZ|Standard deviation of body linear acceleration on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-mean()-XYZ|Mean body from gyroscope on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-std()-XYZ|Standard deviation of body from gyroscope on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyroJerk-mean()-XYZ|Mean body linear acceleration from gyroscope on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyroJerk-std()-XYZ|Standard deviation of body linear acceleration from gyroscope on XYZ-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccMag-mean()|Mean of the magnitude of the three-dimensional body signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyAccMag-std()|Standard deviation of the magnitude of the three-dimensional body signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tGravityAccMag-mean()|Mean of the magnitude of the three-dimensional gravity signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tGravityAccMag-std()|Standard deviation of the magnitude of the three-dimensional gravity signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyAccJerkMag-mean()|Mean of the magnitude of the three-dimensional body linear acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyAccJerkMag-std()|Standard deviation of the magnitude of the three-dimensional body linear acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyGyroMag-mean()|Mean of the magnitude of the three-dimensional gravity acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyGyroMag-std()|Standard deviation of the magnitude of the three-dimensional gravity acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyGyroJerkMag-mean()|Mean of the magnitude of the three-dimensional gravity linear acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|tBodyGyroJerkMag-std()|Standard deviation of the magnitude of the three-dimensional gravity linear acceleration signals calculated using the Euclidean norm|Time features normalized and bounded within [-1,1].|
|fBodyAcc-mean()-XYZ|Mean of frequency domain body acceleration on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyAcc-std()-XYZ|Standard deviation of frequency domain body acceleration on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyAccJerk-mean()-XYZ|Mean of frequency domain body linear acceleration on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyAccJerk-std()-XYZ|Standard deviation of frequency domain body linear acceleration on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyGyro-mean()-XYZ|Mean of frequency domain body from gyroscope on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyGyro-std()-XYZ|Standard deviation of frequency domain body from gyroscope on XYZ-axis|Frequency features normalized and bounded within [-1,1].|
|fBodyAccMag-mean()|Mean of frequency domain magnitude of the three-dimensional body signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyAccMag-std()|Standard deviation of frequency domain magnitude of the three-dimensional body signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyAccJerkMag-mean()|Mean of frequency domain magnitude of the three-dimensional body liniar acceleration signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyAccJerkMag-std()|Standard deviation of frequency domain magnitude of the three-dimensional body liniar acceleration signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyGyroMag-mean()|Mean of frequency domain magnitude of the three-dimensional body gyroscope signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyGyroMag-std()|Standard deviation of frequency domain magnitude of the three-dimensional body gyroscope signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyGyroJerkMag-mean()|Mean of frequency domain magnitude of the three-dimensional body linear gyroscope signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|
|fBodyBodyGyroJerkMag-std()|Standard deviation of frequency domain magnitude of the three-dimensional body linear gyroscope signals calculated using the Euclidean norm|Frequency features normalized and bounded within [-1,1].|

### Data
The resulting data set comprises different activity observations for a group of subjects. The data contains only mean and standard deviation for means. Activities are specified by name, not ID.

### Recipe
The following recipe lists in order all the operations done to the raw data:
* Loading the training and the test data from the dataset folder structure (with descriptive variable names)
  * Variables for each observations were loaded in a single differnet row.
  * Appropriate names were given to columns (measured variable), using the documentation provided.
* Merging
  * Since the training and test dataset comprise separate observations, the merging was done simply by adding the rows from the test set to the training set.
* Subsetting
  * Using the list of features provided, only the measurements on the mean and standard deviation were selected (along with subject and activity ID).
* Transformations
  * The column with the activity ID is replaced by a merge operation with the activity name.
  * The abbreviations in column names are expanded
    * Acc -> Acceleration
	* Mag -> Magnitude
	* Gyro -> Gyroscope
	* Freq -> Frequency
* Summarization
  * The final tidy set is obtained by computing the average of each variable for each activity and each subject.