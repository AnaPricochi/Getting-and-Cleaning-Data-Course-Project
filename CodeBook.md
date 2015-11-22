Getting and Cleaning Data Course Project
=======

Code Book
-----------
 
### Variables
|Variable| Values | Units|
|--------|--------|------|
|SubjectId|Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.|-|
|ActivityLabel|The name of the activity under observation.|-|
|tBodyAcc-mean()-X|Mean body linear acceleration on X-axis|Features are normalized and bounded within [-1,1].|
|tBodyAcc-mean()-Y|Mean body linear acceleration on Y-axis|Features are normalized and bounded within [-1,1].|
|tBodyAcc-mean()-Z|Mean body linear acceleration on Z-axis|Features are normalized and bounded within [-1,1].|

### Data
The resulting data set comprises different activity observations for a group of subjects.

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
  *