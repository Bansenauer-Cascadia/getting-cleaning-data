# Code Book
## Abstract
 Dataset generated from the Human Activity Recognition database using the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors

## Study Design

### Original Data Set Information

 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the study captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

For this project:  

 I created an R script called run_analysis.R that does the following.


  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

See my [Readme file](https://github.com/Bansenauer-Cascadia/getting-cleaning-data/README.md) for more information.

## Code Book
### Variables and units (in parenthesis)
 The tidy data set includes the average values (grouped by subject and activity type) of the Mean and Standard deviation for measurements on the following 33 features ('-XYZ' is used to denote three individual features related to the 3-axial signals in the X, Y and Z directions.)

 * Subject ID (dimensionless)
 * Activity label (dimensionless)
 * tBodyAcc-XYZ (m/s^2)
 * tGravityAcc-XYZ (m/s^2)
 * tBodyAccJerk-XYZ (m/s^3)
 * tBodyGyro-XYZ (rad/s)
 * tBodyGyroJerk-XYZ (rad/s^2)
 * tBodyAccMag (m/s^2)
 * tGravityAccMag (m/s^2)
 * tBodyAccJerkMag (m/s^3)
 * tBodyGyroMag (rad/s)
 * tBodyGyroJerkMag (rad/s^2)
 * fBodyAcc-XYZ (m/s^2)
 * fBodyAccJerk-XYZ (m/s^3)
 * fBodyGyro-XYZ (rad/s)
 * fBodyAccMag (m/s^2)
 * fBodyAccJerkMag (m/s^3)
 * fBodyGyroMag (rad/s)
 * fBodyGyroJerkMag (rad/s^2)

|Var Name|Definition|Comments/Units|
|--------|----------|--------------|
|subject|Identifier of the subject who carried out the experiment|integer (1-30)|
|activity|text labels for Walking, Walking_upstairs, Walking_downstairs, Sitting, Standing, Laying||
|tBodyAcc-mean()-X|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean X axis| standard acceleration units “m/s^2”|
|tBodyAcc-mean()-Y|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Y axis| standard acceleration units “m/s^2”|
|tBodyAcc-mean()-Z|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Z axis| standard acceleration units “m/s^2”|
tGravityAcc-mean()-X|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, X axis| standard acceleration units “m/s^2”|
tGravityAcc-mean()-Y|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, Y axis| standard acceleration units “m/s^2”|
tGravityAcc-mean()-Z|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, Z axis| standard acceleration units “m/s^2”|
tBodyAccJerk-mean()-X|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, X axis| standard acceleration units “m/s^2”|
tBodyAccJerk-mean()-Y|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Y axis| standard acceleration units “m/s^2”|
tBodyAccJerk-mean()-Z|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Z axis| standard acceleration units “m/s^2”|
tBodyGyro-mean()-X|time-series angular velocity vector measured by the gyroscope for each window sample, mean, X axis| units: radians/second|
tBodyGyro-mean()-Y|time-series angular velocity vector measured by the gyroscope for each window sample, mean, Y axis| units: radians/second|
tBodyGyro-mean()-Z|time-series angular velocity vector measured by the gyroscope for each window sample, mean, Z axis| units: radians/second|
tBodyGyroJerk-mean()-X|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, X axis| units: radians/second|
tBodyGyroJerk-mean()-Y|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, Y axis| units: radians/second|
tBodyGyroJerk-mean()-Z|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, Z axis| units: radians/second|
tBodyAccMag-mean()|time-series magnitude of the body acceleration vector obtained by subtracting the gravity from the total acceleration, mean | standard acceleration units “m/s^2”|
tGravityAccMag-mean()|time-series magnitude of the gravity acceleration vector, mean | standard acceleration units “m/s^2”|
tBodyAccJerkMag-mean()|time-series magnitude of the gravity acceleration w/jerk vector, mean, | standard acceleration units “m/s^2”|
tBodyGyroMag-mean()|time-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, mean| units: radians/second|
tBodyGyroJerkMag-mean()|time-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, with jerk, mean| units: radians/second|
fBodyAcc-mean()-X|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean X axis| standard acceleration units “m/s^2”|
fBodyAcc-mean()-Y|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Y axis| standard acceleration units “m/s^2”|
fBodyAcc-mean()-Z|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Z axis| standard acceleration units “m/s^2”|
fBodyAccJerk-mean()-X|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, X axis| standard acceleration units “m/s^2”|
fBodyAccJerk-mean()-Y|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Y axis| standard acceleration units “m/s^2”|
fBodyAccJerk-mean()-Z|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Z axis| standard acceleration units “m/s^2”|
fBodyGyro-mean()-X|frequency-series angular velocity vector measured by the gyroscope for each window sample, mean, X axis| units: radians/second|
fBodyGyro-mean()-Y|frequency-series angular velocity vector measured by the gyroscope for each window sample, mean, Y axis| units: radians/second|
fBodyGyro-mean()-Z|frequency-series angular velocity vector measured by the gyroscope for each window sample, mean, Z axis| units: radians/second|
fBodyAccMag-mean()|frequency-series magnitude of the body acceleration vector obtained by subtracting the gravity from the total acceleration, mean | standard acceleration units “m/s^2”|
fGravityAccMag-mean()|frequency-series magnitude of the gravity acceleration vector, mean | standard acceleration units “m/s^2”|
fBodyAccJerkMag-mean()|frequency-series magnitude of the gravity acceleration w/jerk vector, mean, | standard acceleration units “m/s^2”|
fBodyGyroMag-mean()|frequency-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, mean| units: radians/second|
fBodyGyroJerkMag-mean()|frequency-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, with jerk, mean| units: radians/second|
tBodyAcc-std()-X|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard acceleration units “m/s^2”|
tBodyAcc-std()-Y|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard acceleration units “m/s^2”|
tBodyAcc-std()-Z|time-series body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard acceleration units “m/s^2”|
tGravityAcc-std()-X|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard acceleration units “m/s^2”|
tGravityAcc-std()-Y|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard acceleration units “m/s^2”|
tGravityAcc-std()-Z|time-series gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard acceleration units “m/s^2”|
tBodyAccJerk-std()-X|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard acceleration units “m/s^2”|
tBodyAccJerk-std()-Y|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard acceleration units “m/s^2”|
tBodyAccJerk-std()-Z|time-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard acceleration units “m/s^2”|
tBodyGyro-std()-X|time-series angular velocity vector measured by the gyroscope for each window sample, standard deviation, X axis| units: radians/second|
tBodyGyro-std()-Y|time-series angular velocity vector measured by the gyroscope for each window sample, standard deviation, Y axis| units: radians/second|
tBodyGyro-std()-Z|time-series angular velocity vector measured by the gyroscope for each window sample, standard deviation, Y axis| units: radians/second|
tBodyGyroJerk-std()-X|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, X axis| units: radians/second|
tBodyGyroJerk-std()-Y|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, Y axis| units: radians/second|
tBodyGyroJerk-std()-Z|time-series angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, Z axis| units: radians/second|
tBodyAccMag-std()|time-series magnitude of the body acceleration vector obtained by subtracting the gravity from the total acceleration, mean | standard acceleration units “m/s^2”|
tGravityAccMag-std()|time-series magnitude of the gravity acceleration vector, mean | standard acceleration units “m/s^2”|
tBodyAccJerkMag-std()|time-series magnitude of the gravity acceleration w/jerk vector, mean, | standard acceleration units “m/s^2”|
tBodyGyroMag-std()|time-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, mean| units: radians/second|
tBodyGyroJerkMag-std()|time-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, with jerk, mean| units: radians/second|
fBodyAcc-std()-X|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, std X axis| standard acceleration units “m/s^2”|
fBodyAcc-std()-Y|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, std Y axis| standard acceleration units “m/s^2”|
fBodyAcc-std()-Z|frequency-series body acceleration signal obtained by subtracting the gravity from the total acceleration, std Z axis| standard acceleration units “m/s^2”|
fBodyAccJerk-std()-X|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, std, X axis| standard acceleration units “m/s^2”|
fBodyAccJerk-std()-Y|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, std, Y axis| standard acceleration units “m/s^2”|
fBodyAccJerk-std()-Z|frequency-series gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, std, Z axis| standard acceleration units “m/s^2”|
fBodyGyro-std()-X|frequency-series angular velocity vector measured by the gyroscope for each window sample, std, X axis| units: radians/second|
fBodyGyro-std()-Y|frequency-series angular velocity vector measured by the gyroscope for each window sample, std, Y axis| units: radians/second|
fBodyGyro-std()-Z|frequency-series angular velocity vector measured by the gyroscope for each window sample, std, Z axis| units: radians/second|
fBodyAccMag-std()|frequency-series magnitude of the body acceleration vector obtained by subtracting the gravity from the total acceleration, std | standard acceleration units “m/s^2”|
fGravityAccMag-std()|frequency-series magnitude of the gravity acceleration vector, std | standard acceleration units “m/s^2”|
fBodyAccJerkMag-std()|frequency-series magnitude of the gravity acceleration w/jerk vector, std, | standard acceleration units “m/s^2”|
fBodyGyroMag-std()|frequency-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, std| units: radians/second|
fBodyGyroJerkMag-std()|frequency-series magnitude of the angular velocity vector measured by the gyroscope for each window sample, with jerk, std| units: radians/second|

## Sources:
 * [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
 * Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
[www.smartlab.ws](http://www.smartlab.ws)
