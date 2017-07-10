__Code Book__

*The variables that correspond to each column found in "Week_4_output_table.txt", in order of appearance, are as follows...*

1) "Subject ID"

    The unique identifier given to each of the 30 volunteers

2) Activity - The type of physical activity the volunteer is participating in for a given observation:

    1 - WALKING, 

    2 - WALKING_UPSTAIRS

    3 - WALKING_DOWNSTAIRS

    4 - SITTING

    5 - STANDING

    6 - LAYING

3 - 81)

In the raw data, signals were recorded from smartphone accelerometers and gyroscopes. Since so many (561) variables were recorded and each variable has a number of aspects to it, they follow an abbreviated naming convention. 

- The prefix 't' indicates a time-domain signal. The prefix 'f' indicates a frequency-domain signal, as discussed lower down.

- Acceleration signals were separated into 'body' and 'gravity' components, so this is indicated by either '-Body-' or '-Gravity-' in the variable name.

- Whether the signal is from an accelerometer or a gyroscope is indicated by the presence of '-Acc-' or '-Gyro-' in the variable name.

- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

- The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

- A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

- Mean values of the quantities stated in the raw data are indicated by '-mean()-'.

- Standard deviations of the quantities stated in the raw data are indicated by '-std()-'.

- The "Mean of " prefix that appears before every quantitative variable in 'Week_4_output_table.txt' is to distinguish these variables from the raw data, since these columns contain mean values for the numerous 50 Hz signal measurements.



Each variable name can thus be understood. The full list of variable names are as follows:

"Mean of tBodyAcc-mean()-X"               

"Mean of tBodyAcc-mean()-Y"              

"Mean of tBodyAcc-mean()-Z"               

"Mean of tGravityAcc-mean()-X"           

"Mean of tGravityAcc-mean()-Y"            

"Mean of tGravityAcc-mean()-Z"           

"Mean of tBodyAccJerk-mean()-X"           

"Mean of tBodyAccJerk-mean()-Y"          

"Mean of tBodyAccJerk-mean()-Z"           

"Mean of tBodyGyro-mean()-X"             

"Mean of tBodyGyro-mean()-Y"              

"Mean of tBodyGyro-mean()-Z"             

"Mean of tBodyGyroJerk-mean()-X"          

"Mean of tBodyGyroJerk-mean()-Y"         

"Mean of tBodyGyroJerk-mean()-Z"          

"Mean of tBodyAccMag-mean()"             

"Mean of tGravityAccMag-mean()"           

"Mean of tBodyAccJerkMag-mean()"         

"Mean of tBodyGyroMag-mean()"             

"Mean of tBodyGyroJerkMag-mean()"        

"Mean of fBodyAcc-mean()-X"               

"Mean of fBodyAcc-mean()-Y"              

"Mean of fBodyAcc-mean()-Z"               

"Mean of fBodyAcc-meanFreq()-X"          

"Mean of fBodyAcc-meanFreq()-Y"           

"Mean of fBodyAcc-meanFreq()-Z"          

"Mean of fBodyAccJerk-mean()-X"           

"Mean of fBodyAccJerk-mean()-Y"          

"Mean of fBodyAccJerk-mean()-Z"           

"Mean of fBodyAccJerk-meanFreq()-X"      

"Mean of fBodyAccJerk-meanFreq()-Y"       

"Mean of fBodyAccJerk-meanFreq()-Z"      

"Mean of fBodyGyro-mean()-X"              

"Mean of fBodyGyro-mean()-Y"             

"Mean of fBodyGyro-mean()-Z"              

"Mean of fBodyGyro-meanFreq()-X"         

"Mean of fBodyGyro-meanFreq()-Y"          

"Mean of fBodyGyro-meanFreq()-Z"         

"Mean of fBodyAccMag-mean()"              

"Mean of fBodyAccMag-meanFreq()"         

"Mean of fBodyBodyAccJerkMag-mean()"      

"Mean of fBodyBodyAccJerkMag-meanFreq()" 

"Mean of fBodyBodyGyroMag-mean()"         

"Mean of fBodyBodyGyroMag-meanFreq()"    

"Mean of fBodyBodyGyroJerkMag-mean()"     

"Mean of fBodyBodyGyroJerkMag-meanFreq()"

"Mean of tBodyAcc-std()-X"                

"Mean of tBodyAcc-std()-Y"               

"Mean of tBodyAcc-std()-Z"                

"Mean of tGravityAcc-std()-X"            

"Mean of tGravityAcc-std()-Y"             

"Mean of tGravityAcc-std()-Z"            

"Mean of tBodyAccJerk-std()-X"            

"Mean of tBodyAccJerk-std()-Y"           

"Mean of tBodyAccJerk-std()-Z"            

"Mean of tBodyGyro-std()-X"              

"Mean of tBodyGyro-std()-Y"               

"Mean of tBodyGyro-std()-Z"              

"Mean of tBodyGyroJerk-std()-X"           

"Mean of tBodyGyroJerk-std()-Y"          

"Mean of tBodyGyroJerk-std()-Z"           

"Mean of tBodyAccMag-std()"              

"Mean of tGravityAccMag-std()"            

"Mean of tBodyAccJerkMag-std()"          

"Mean of tBodyGyroMag-std()"              

"Mean of tBodyGyroJerkMag-std()"         

"Mean of fBodyAcc-std()-X"                

"Mean of fBodyAcc-std()-Y"               

"Mean of fBodyAcc-std()-Z"                

"Mean of fBodyAccJerk-std()-X"           

"Mean of fBodyAccJerk-std()-Y"            

"Mean of fBodyAccJerk-std()-Z"           

"Mean of fBodyGyro-std()-X"               

"Mean of fBodyGyro-std()-Y"              

"Mean of fBodyGyro-std()-Z"               

"Mean of fBodyAccMag-std()"              

"Mean of fBodyBodyAccJerkMag-std()"       

"Mean of fBodyBodyGyroMag-std()"         

"Mean of fBodyBodyGyroJerkMag-std()"
