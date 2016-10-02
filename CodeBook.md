CodeBook
This code book that describes the variables, the data, and the transformations performed to clean up the data.

The data source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variables 
The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeDomianAcc-XYZ and TimeDomianGyro-XYZ. These time domain signals (TimeDomian) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeDomianBodyAcc-XYZ and TimeDomianGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeDomianBodyAccJerk-XYZ and TimeDomianBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeDomianBodyAccMag, TimeDomianGravityAccMag, TimeDomianBodyAccJerkMag, TimeDomianBodyGyroMag, TimeDomianBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqDomianBodyAcc-XYZ, FreqDomianBodyAccJerk-XYZ, FreqDomianBodyGyro-XYZ, FreqDomianBodyAccJerkMag, FreqDomianBodyGyroMag, FreqDomianBodyGyroJerkMag. (FreqDomian indicates frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

TimeDomianBodyAcc-XYZ
TimeDomianGravityAcc-XYZ
TimeDomianBodyAccJerk-XYZ
TimeDomianBodyGyro-XYZ
TimeDomianBodyGyroJerk-XYZ
TimeDomianBodyAccMag
TimeDomianGravityAccMag
TimeDomianBodyAccJerkMag
TimeDomianBodyGyroMag
TimeDomianBodyGyroJerkMag
FreqDomianBodyAcc-XYZ
FreqDomianBodyAccJerk-XYZ
FreqDomianBodyGyro-XYZ
FreqDomianBodyAccMag
FreqDomianBodyAccJerkMag
FreqDomianBodyGyroMag
FreqDomianBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean(): Mean value
Std(): Standard deviation

Only these two were extracted from the original dataset. The complete list of variables of each feature vector is available in 'features.txt'

The data
The dataset includes the following files:

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Transformation details

There are 5 parts:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


