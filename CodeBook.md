Getting and Cleaning Data Course Project
=======

Code Book
-----------
 
### Variables
|Variable| Values | Units|
|--------|--------|------|
|SubjectId|Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.|None|

### Data
The resulting data set comprises different activity observations for a group of subjects.

### Recipe
The following recipe lists in order all the operations done to the raw data:
0. Loading the training and the test data from the dataset folder structure
  * Variables for each observations were loaded in a single differnet row
  * Appropriate names were given to columns (measured variable), using the documentation provided
  * 
1. Merging
  * Since the training and test dataset comprise separate obserrvations, the merging was done simply by adding rows
2. Subsetting
  *
3. Summarization
4. Transformations
  *