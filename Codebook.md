__Code Book__

The variables that correspond to each column found in "Week_4_output_table.txt" are as follows:

- Subject ID 
1
- The unique identifier given to each of the 30 volunteers

- Activity - The type of physical activity the volunteer is participating in for a given observation
6
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS


"Subject ID"                              "Activity"                               
"Mean of tBodyAcc-mean()-X"               "Mean of tBodyAcc-mean()-Y"              
"Mean of tBodyAcc-mean()-Z"               "Mean of tGravityAcc-mean()-X"           
"Mean of tGravityAcc-mean()-Y"            "Mean of tGravityAcc-mean()-Z"           
"Mean of tBodyAccJerk-mean()-X"           "Mean of tBodyAccJerk-mean()-Y"          
"Mean of tBodyAccJerk-mean()-Z"           "Mean of tBodyGyro-mean()-X"             
"Mean of tBodyGyro-mean()-Y"              "Mean of tBodyGyro-mean()-Z"             
"Mean of tBodyGyroJerk-mean()-X"          "Mean of tBodyGyroJerk-mean()-Y"         
"Mean of tBodyGyroJerk-mean()-Z"          "Mean of tBodyAccMag-mean()"             
"Mean of tGravityAccMag-mean()"           "Mean of tBodyAccJerkMag-mean()"         
"Mean of tBodyGyroMag-mean()"             "Mean of tBodyGyroJerkMag-mean()"        
"Mean of fBodyAcc-mean()-X"               "Mean of fBodyAcc-mean()-Y"              
"Mean of fBodyAcc-mean()-Z"               "Mean of fBodyAcc-meanFreq()-X"          
"Mean of fBodyAcc-meanFreq()-Y"           "Mean of fBodyAcc-meanFreq()-Z"          
"Mean of fBodyAccJerk-mean()-X"           "Mean of fBodyAccJerk-mean()-Y"          
"Mean of fBodyAccJerk-mean()-Z"           "Mean of fBodyAccJerk-meanFreq()-X"      
"Mean of fBodyAccJerk-meanFreq()-Y"       "Mean of fBodyAccJerk-meanFreq()-Z"      
"Mean of fBodyGyro-mean()-X"              "Mean of fBodyGyro-mean()-Y"             
"Mean of fBodyGyro-mean()-Z"              "Mean of fBodyGyro-meanFreq()-X"         
"Mean of fBodyGyro-meanFreq()-Y"          "Mean of fBodyGyro-meanFreq()-Z"         
"Mean of fBodyAccMag-mean()"              "Mean of fBodyAccMag-meanFreq()"         
"Mean of fBodyBodyAccJerkMag-mean()"      "Mean of fBodyBodyAccJerkMag-meanFreq()" 
"Mean of fBodyBodyGyroMag-mean()"         "Mean of fBodyBodyGyroMag-meanFreq()"    
"Mean of fBodyBodyGyroJerkMag-mean()"     "Mean of fBodyBodyGyroJerkMag-meanFreq()"
"Mean of tBodyAcc-std()-X"                "Mean of tBodyAcc-std()-Y"               
"Mean of tBodyAcc-std()-Z"                "Mean of tGravityAcc-std()-X"            
"Mean of tGravityAcc-std()-Y"             "Mean of tGravityAcc-std()-Z"            
"Mean of tBodyAccJerk-std()-X"            "Mean of tBodyAccJerk-std()-Y"           
"Mean of tBodyAccJerk-std()-Z"            "Mean of tBodyGyro-std()-X"              
"Mean of tBodyGyro-std()-Y"               "Mean of tBodyGyro-std()-Z"              
"Mean of tBodyGyroJerk-std()-X"           "Mean of tBodyGyroJerk-std()-Y"          
"Mean of tBodyGyroJerk-std()-Z"           "Mean of tBodyAccMag-std()"              
"Mean of tGravityAccMag-std()"            "Mean of tBodyAccJerkMag-std()"          
"Mean of tBodyGyroMag-std()"              "Mean of tBodyGyroJerkMag-std()"         
"Mean of fBodyAcc-std()-X"                "Mean of fBodyAcc-std()-Y"               
"Mean of fBodyAcc-std()-Z"                "Mean of fBodyAccJerk-std()-X"           
"Mean of fBodyAccJerk-std()-Y"            "Mean of fBodyAccJerk-std()-Z"           
"Mean of fBodyGyro-std()-X"               "Mean of fBodyGyro-std()-Y"              
"Mean of fBodyGyro-std()-Z"               "Mean of fBodyAccMag-std()"              
"Mean of fBodyBodyAccJerkMag-std()"       "Mean of fBodyBodyGyroMag-std()"         
"Mean of fBodyBodyGyroJerkMag-std()





The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
