run_analysis <- function(){
  
  # Load additional tables
  activity_level <- read.table("UCI HAR Dataset\\activity_labels.txt")
  colnames(activity_level) <- c("ID", "ActivityName")
  
  # Load training set
  training_set <- load_dataset()
  
  # Load test set
  test_set <- load_dataset("test")
  
  # Merge datasets
  merged_set <- rbind(training_set, test_set)
  
  # Sub-setting only mean and standard deviation measurements (along with subject and activity IDs)
  sub_set <- merged_set[, grepl("ID", names(merged_set))]
  sub_set <- cbind(sub_set, merged_set[, grepl("mean", names(merged_set))])
  sub_set <- cbind(sub_set, merged_set[, grepl("std", names(merged_set))])
  
  sub_set
  
}

## This function loads a dataset within a folder.
## The argument `set` specifies the dataset type (by default train), used to identify the data.
## The function returns a data frame containing the dataset
load_dataset <- function(set = "train"){
  
  # Load subject ID names
  subject_id <- read.table(paste("UCI HAR Dataset\\", set, "\\subject_", set, ".txt", sep=""))
  column_names <- c("SubjectID")

  # Load activity labels
  activity_label <- read.table(paste("UCI HAR Dataset\\", set, "\\y_", set, ".txt", sep=""))
  column_names <- rbind(column_names, "ActivityID")
  
  # Load set
  set <- read.table(paste("UCI HAR Dataset\\", set, "\\X_", set, ".txt", sep=""))
  set_names <- read.table("UCI HAR Dataset\\features.txt")
  for(i in 1:nrow(set_names)) {
    temp = as.character(set_names[i,2])
    column_names <- rbind(column_names, temp)
  }
  
  # Load inertials

  # Construct dataframe with appropriate names for variables
  data_set <- data.frame(subject_id)
  data_set <- cbind(data_set, activity_label)
  data_set <- cbind(data_set, set)
  colnames(data_set) <- column_names

  # Return data set
  data_set
}