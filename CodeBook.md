Getting and Cleaning Data Course Project
=======

Code Book
-----------
 
### Variables
|Variable| Values | Units|
|--------|--------|------|
|SubjectId|Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.|-|
|ActivityLabel|The name of the activity under observation.|-|
|tBodyAcc-mean()-X|Mean body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-mean()-Y|Mean body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-mean()-Z|Mean body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-std()-X|Standard deviation of body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-std()-Y|Standard deviation of body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyAcc-std()-Z|Standard deviation of body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-mean()-X|Mean gravity acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-mean()-Y|Mean gravity acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-mean()-Z|Mean gravity acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-std()-X|Standard deviation of gravity acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-std()-Y|Standard deviation of gravity acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tGravityAcc-std()-Z|Standard deviation of gravity acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-mean()-X|Mean linear body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-mean()-Y|Mean linear body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-mean()-Z|Mean linear body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-std()-X|Standard deviation of linear body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-std()-Y|Standard deviation of linear body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyAccJerk-std()-Z|Standard deviation of linear body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-mean()-X|Mean angular velocity from body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-mean()-Y|Mean angular velocity from body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-mean()-Z|Mean angular velocity from body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-std()-X|Standard deviation of  angular velocity from body acceleration on X-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-std()-Y|Standard deviation of  angular velocity from body acceleration on Y-axis|Time features normalized and bounded within [-1,1].|
|tBodyGyro-std()-Z|Standard deviation of  angular velocity from body acceleration on Z-axis|Time features normalized and bounded within [-1,1].|

### Data
The resulting data set comprises different activity observations for a group of subjects. The data contains only mean and standard deviation for means. Activities are specified by name, not ID.

|ID| Activity Name |
|--------|--------|
|1 |WALKING|
|2 |WALKING_UPSTAIRS|
|3 |WALKING_DOWNSTAIRS|
|4 |SITTING|
|5 |STANDING|
|6 |LAYING|

### Recipe
The following recipe lists in order all the operations done to the raw data:
0. Loading the training and the test data from the dataset folder structure
  * Variables for each observations were loaded in a single differnet row.
  * Appropriate names were given to columns (measured variable), using the documentation provided.
1. Merging
  * Since the training and test dataset comprise separate observations, the merging was done simply by adding the rows from the test set to the training set.
2. Subsetting
  * Using the list of features provided, only the measurements on the mean and standard deviation were selected (along with subject and activity ID).
3. Summarization
4. Transformations
  * The column with the activity ID is replaced by a merge operation with the activity name.