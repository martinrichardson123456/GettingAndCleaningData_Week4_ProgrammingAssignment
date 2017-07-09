# GettingAndCleaningData_Week4_ProgrammingAssignment
Programming assignment for week 4 of 'Getting and cleaning data' module on Coursera Data Science Specialization


#################################################

The raw data is found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description of the raw data made by those who recorded the data is found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The name given to the .zip file linked to above was chosen to be "FUCI_dataset.zip", and when
extracted, the contents are placed in within a newly-created directory named /FUCI_dataset. 
This is the only user-defined part of the commands that follow.



#################################################

Execute the following commands before using the run_analysis function:

setwd( <the directory where the '.../FUCI_dataset' directory mentioned above lives> )

library(dplyr)

train_dataset   <- read.table("./FUCI_dataset/UCI HAR Dataset/train/X_train.txt")

test_dataset    <- read.table("./FUCI_dataset/UCI HAR Dataset/test/X_test.txt")

features        <- read.table("./FUCI_dataset/UCI HAR Dataset/features.txt")

activity_labels <- read.table("./FUCI_dataset/UCI HAR Dataset/activity_labels.txt")

y_train         <- read.table("./FUCI_dataset/UCI HAR Dataset/train/y_train.txt")

y_test          <- read.table("./FUCI_dataset/UCI HAR Dataset/test/y_test.txt")

subject_train   <- read.table("./FUCI_dataset/UCI HAR Dataset/train/subject_train.txt")

subject_test    <- read.table("./FUCI_dataset/UCI HAR Dataset/test/subject_test.txt")



#################################################

One may then execute the following commands:

source("run_analysis.R")

run_analysis(train_dataset = train_dataset, test_dataset = test_dataset, 
             features = features, y_train = y_train, y_test = y_test, 
             activity_labels = activity_labels, subject_train = subject_train, 
             subject_test = subject_test)




#################################################

ASSIGNMENT INSTRUCTIONS:

 You should create one R script called run_analysis.R that does the following:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 3. Uses descriptive activity names to name the activities in the data set.
 4. Appropriately labels the data set with descriptive variable names.
 5. From the data set in step 4, creates a second, independent tidy data set with the
    average of each variable for each activity and each subject.



#################################################

DESCRIPTION OF "run_analysis.R" SCRIPT

The script contains comments describing what is happening at each step, but to summarize:

- The data is split into two groups of study volunteers - the 'test' group and the 'train' group.

- The function 'run_analysis()' takes as arguments the two large raw data sets, which are referred to above 
  (and in the script) as 'train_dataset' and 'test_dataset'.

- Neither one of these data sets have descriptive column names; they are V1, V2, ..., V561. The columns for
  these data sets have descriptive names applied to them, which are found in the 'features.txt' file, whose 
  contents is stored under the 'features' argument (mentioned above) passed to the 'run_analysis()' function.
  [This fulfils part 4 of the assignment instructions stated above.]
  
- These two data sets are then combined together, with the rows for the 'train' group first, followed by the
  rows for the 'test' group. [This fulfils part 1 of the assignment instructions stated above.]
  
- This assignment is only interested in measurements of the means and standard deviations of the various 
  quantities recorded in the study. Since the columns/variables now have descriptive names rather than V1, V2 
  and so on, any columns whose name features the string 'mean()' or 'std()' are extracted and stored in 
  separate data frames (the rest of the columns are discarded). [This fulfils part 3 of the assignment 
  instructions stated above.]
  
- Each volunteer/subject is given an ID number; since there are 30 subjects, this ranges from 1, 2, ..., 30.
  There were 21 subjects in the 'train' group and 9 in the 'test' group. The corresponding subject ID numbers
  for each are stored in the 'subject_train' and 'subject_test' arguments mentioned above. The script 
  combines these into a single column, with all the subject ID numbers for the 'train' group appearing first,
  followed by those for the 'test' group.
  
- 
  






