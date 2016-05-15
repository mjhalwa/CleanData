# Code book - Getting And Cleaning Data project

##subjectid
- type: factor
- range: 1 .. 30
- description (data): id of subject performing the activity
- description (averageData): same as above
- unit: none

##activity                 
- type: factor
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
- description (data): performed activity of the subject
- description (averageData): same as above
- unit: none

##partition
- type: factor
  - train
  - test
- description (data): purpose of data collection. Either for training or testing the algorithm of the underlying study
- description (averageData): not contained (direct relation can be drawn for each subjectid from data)
- unit: none

##t_body_acc_mean_x
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_mean_y
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_mean_z        
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_std_x          
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_std_y         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_std_z          
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_mean_x     
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for gravity related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_mean_y      
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for gravity related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_mean_z     
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for gravity related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_std_x       
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for gravity related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_std_y      
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for gravity related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_std_z       
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for gravity related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_mean_x   
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_mean_y    
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_mean_z   
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_std_x     
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_std_y    
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_std_z     
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_gyro_mean_x       
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_mean_y        
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_mean_z       
- type: numeric
- range: -1 .. +1
- description (data): mean of time domain signal for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_std_x         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_std_y        
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_std_z         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of time domain signal for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_mean_x  
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_mean_y   
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_mean_z  
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from time domain signal for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_std_x    
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_std_y   
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_std_z    
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from time domain signal for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_acc_mean_mag      
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of time domain signal for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_std_mag        
- type: numeric
- range: -1 .. +1
- description (data): standard devaition of euclidian norm (magnitude) of time domain signal for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_mean_mag   
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of time domain signal for gravity related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_gravity_acc_std_mag     
- type: numeric
- range: -1 .. +1
- description (data): standard devaition of euclidian norm (magnitude) of time domain signal for gravity related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_mean_mag 
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of derived jerks from time domain signal for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_acc_jerk_std_mag   
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of derived jerks from time domain signal for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##t_body_gyro_mean_mag     
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of time domain signal for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_std_mag       
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of time domain signal for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_mean_mag
- type: numeric
- range: -1 .. +1
- description (data): mean of of euclidian norm (magnitude) derived jerks from time domain signal for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##t_body_gyro_jerk_std_mag  
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of of euclidian norm (magnitude) derived jerks from time domain signal for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_acc_mean_x
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_mean_y         
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_mean_z        
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_std_x          
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_std_y         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_std_z          
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_mean_x   
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_mean_y    
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_mean_z   
- type: numeric
- range: -1 .. +1
- description (data): mean of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_std_x     
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_std_y    
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_std_z     
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of derived jerks from frequency domain signal (derived by FFT) for body related acceleration in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_gyro_mean_x       
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_mean_y        
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_mean_z       
- type: numeric
- range: -1 .. +1
- description (data): mean of frequency domain signal (derived by FFT) for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_std_x         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related velocity in x direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_std_y        
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related velocity in y direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_std_z         
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of frequency domain signal (derived by FFT) for body related velocity in z direction for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_acc_mean_mag      
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of frequency domain signal (derived by FFT) for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_std_mag        
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of frequency domain signal (derived by FFT) for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_mean_mag 
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of derived jerks from frequency domain signal (derived by FFT) for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_acc_jerk_std_mag   
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of derived jerks from frequency domain signal (derived by FFT) for body related acceleration for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded multiple of earth's gravity (9.80665 m/seg2)

##f_body_gyro_mean_mag     
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of frequency domain signal (derived by FFT) for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_std_mag       
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of frequency domain signal (derived by FFT) for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_jerk_mean_mag
- type: numeric
- range: -1 .. +1
- description (data): mean of euclidian norm (magnitude) of derived jerks from frequency domain signal (derived by FFT) for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second

##f_body_gyro_jerk_std_mag 
- type: numeric
- range: -1 .. +1
- description (data): standard deviation of euclidian norm (magnitude) of derived jerks from frequency domain signal (derived by FFT) for body related velocity for one time window
- description (averageData): average of the above for each activity and subjectid
- unit: normalized and bounded radian per second


# Study design
data was collected from [this file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
related to [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones this link)).

for details on separate files see README.md