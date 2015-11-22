Getting and Cleaning Data Course Project
=======

UCI HAR Dataset Cleaning
-----------
 
### What this project includes
<strong>UCI Har Dataset</strong> folder - Dataset used for this project (download link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
<strong>run_analysis.R</strong> script - Script performing the data ... and cleaning.
<strong>CodeBook.md</strong> file - The code book that details the data cleaning steps.

### How to run analysis scrip
The project contains only one script that performs all the steps of the analysis. 
The main function (<em>run_analysis.R</em>) function calls a series of other functions to perform certain steps of the analysis. All the functions are documented with appropriate comments.

To run the analysis, it is sufficient to source the <em>run_analysis</em> function and run it without arguments.
```
> source('~/UCI HAR Dataset/Getting-and-Cleaning-Data-Course-Project/run_analysis.R')
> run_analysis()
```

### Analysis details
The R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.