Getting and Cleaning Data Course Project
=======

UCI HAR Dataset Cleaning
-----------
 
### What this project includes
<strong>UCI Har Dataset</strong> folder - Dataset used for this project (download link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
<strong>run_analysis.R</strong> script - Script performing the data ... and cleaning.
<strong>CodeBook.md</strong> file - The code book that details the data cleaning steps.

### How to run analysis script
The project contains only one script that performs all the steps of the analysis. 
The main function (<em>run_analysis.R</em>) function calls a series of other functions to perform certain steps of the analysis. All the functions are documented with appropriate comments.

To run the analysis, it is sufficient to source the <em>run_analysis</em> function and run it without arguments.
```
> source('~/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/run_analysis.R')
> tidy_set <- run_analysis()
```

To export the tidy data use the following commands
```
write.table(tidy_set, file="result.txt", row.names=FALSE)
```

### Analysis details
The R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
  * The script loads the training and test set from the respective folders and then merges them in one data frame.
  * At this step, the data is also cleaned (all variables are checked to be within the expected range).
  * Since observations from the two sets are independent, merging was performed by adding rows.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  * The script sub-sets from the features only variables reflecting mean and standard deviation, by taking columns from the merged set.
  * The sub-setting is done by taking the column with `mean` and `std` in the column name.
3. Uses descriptive activity names to name the activities in the data set
  * The script merges the data set resulted from subsetting with the table containing the activity ID and name (this is loaded separately).
4. Appropriately labels the data set with descriptive variable names. 
  * The script already does this when loading the data (described in step 1).
  * Besides this, the script expands different abbreviated column names (e.g. `Acc` become `Acceleration` in column names)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * The script averages variables using the aggregation utility.