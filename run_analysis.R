
run_analysis <- function(train_dataset, test_dataset, features, 
                         y_train, y_test, activity_labels,
                         subject_train, subject_test){

  #################################################
  # Give column names to these tables
  colnames(train_dataset) <- features$V2
  colnames(test_dataset)  <- features$V2
  
  # Combine the two datasets by row: rbind()
  combined_dataset <- rbind(train_dataset, test_dataset)
      
  # Get the indices of columns whose names feature the string 'mean()'
  mean_cols <- grep("mean()", names(combined_dataset))
  
  # Get the indices of columns whose names feature the string 'std()'
  std_cols <- grep("std()", names(combined_dataset))

  # Create smaller data frame using only columns featuring 'mean()' in their name  
  df_means <- as.data.frame(matrix(0, ncol = 0, nrow = nrow(combined_dataset)))
  for(i in 1:length(mean_cols)){
    df_means <- cbind(df_means, combined_dataset[mean_cols[i]])
  }
  
  # Create smaller data frame using only columns featuring 'std()' in their name  
  df_stds <- as.data.frame(matrix(0, ncol = 0, nrow = nrow(combined_dataset)))
  for(i in 1:length(std_cols)){
    df_stds <- cbind(df_stds, combined_dataset[std_cols[i]])
  }
  
  # Combine the subject / volunteer ID numbers columns for 'train' and 'test' into one
  combined_subject_IDs <- rbind(subject_train, subject_test)
  
  # Append the column containing numbers that denote an activity for 'test' onto the 
  # end of that for 'train'
  activity_numbers <- rbind(y_train, y_test)
  
  # Store the descriptive names of each of the six activities in a vector 'act_lab'
  act_lab <- activity_labels$V2
  act_lab <- as.vector(act_lab)
  
  # Create column where activity numbers are converted to descriptive activity names
  converted_activity_numbers <- activity_numbers
  for(i in 1:nrow(activity_numbers)){
    converted_activity_numbers[i,1] <- act_lab[ activity_numbers[i,1] ]
  }
  
  # Create data frame including subject IDs, named activities, and the data frames for 
  # means and std_devs
  df_combined <- cbind(combined_subject_IDs, converted_activity_numbers, 
                       df_means, df_stds)
  
  # Give descriptive names to the columns containing subject IDs and named activities
  colnames(df_combined)[1] <- "Subject ID"
  colnames(df_combined)[2] <- "Activity"
  
  
  #################################################
  # Introducing the output data frame 
  df_final <- data.frame()

  ## there are 30 volunteers/subjects to consider
  for(i in 1:30){
            
      # This statement must occur within the for-loop (only doing it before the 
      # for-loop results in an error)
      df <- data.frame(df_combined) 
      
      # Pick out only the rows for which the value of the 'Subject ID' column matches
      # the current for-loop index i
      rows_for_this_id <- filter(df, df$Subject.ID == i)

      # For the current subject, create a row for each of the 6 activities
      for(j in 1:6){
          this_activity <- act_lab[j]
          
          # Pick out the rows from the data frame for this subject ID that correspond
          # to the j'th activity
          rows_for_this_activity <- filter(rows_for_this_id, 
                                           rows_for_this_id$Activity == this_activity)
 
          # Go through each of the relevant columns (i.e. ignoring the subject ID and
          # activities column) and calculate the column's mean value, and add it to a
          # vector 'variable_means_row'
          variable_means_row <- NULL
          for(k in 3:ncol(rows_for_this_activity)){
              variable_means_row <- c(variable_means_row, 
                                      mean(rows_for_this_activity[ , k]))
          } 
          
          # Create a row starting with subject ID and activity, then all the variable 
          # means, then add it to the output data frame created earlier
          df_final <- rbind(df_final, rbind(c(i, this_activity, variable_means_row)))
      } # end of for(j in 1:6){
      
  } # end of for(i in 1:30) (i.e. the loop over the volunteers)

  # Give the output data frame's columns the variable names 
  colnames(df_final) <- names(df_combined)
  
  # Prefix all the column names with 'Mean of' to indicate they are not quite the 
  # same as the original data
  colnames(df_final) <- paste("Mean of", colnames(df_final), sep = " ")
  
  # Correct the first two column names since they should not have the 'Mean of' prefix
  colnames(df_final)[1] <- "Subject ID"
  colnames(df_final)[2] <- "Activity"

  # Show the result
  View(df_final)  

  # Save the result as a text file
  write.table(df_final, file = "Week_4_output_table.txt", row.names = FALSE)
    
} # end of run_analysis()
