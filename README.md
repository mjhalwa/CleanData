# Project for the "Getting and Cleaning Data" Course

This project uses collected accelerometer and gyroscope data.
The data was collected from several independent smartphones of
same brand and type (view [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones this link))
for details.

Within this project the data will be merged into tidy R data sets.

## Files:
1. **getData.R** downloads and unzips raw data files from [this file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. **run_analysis.R** operates on the raw data to generate tidy data sets
3. **CodeBook.md** explains the transformations from raw data to the tidy data sets and describes variables and the data in detail.
4. **data.txt** descriptive tidy form of raw data
5. **average.txt** descriptive tidy data containing average variables for each subjectid and activity

## GetData:
This script has to be run first. It downloads the raw data zip-file from the upper link
and unzips the inherent directory structure to the current path.

## Run_Analysis:
1. read in "train" and "test" raw data separately
  - read data from feature vector file
  - read the feature vector column labeling and apply this labeling to read feature vector data
  - read activity number file and apply literal factors from './UCI HAR Dataset/activity_labels.txt', then add this column with label 'activity'
  - read subject number file and add this column with label 'subject'
2. combine data sets
  - adding a factor-column "partition" for "train" data set with level "train"
  - adding a factor-column "partition" for "test" data set with level "test"
  - combine both data sets
  - keep only mean and standard deviation variables
3. setup descriptive names
  - correct "BodyBody" in variable names to just "Body"
  - put "Mag" to the end of these variables names to have same position as X,Y and Z coordinate
  - separate each descriptive part of the variable with an underscore "_"
  - make variable names lowercase
  - reorder columns to begin with the observation-describing columns
4. create mean data set
  - copy current data set
  - introduce goups for subject IDs and activities
  - create new tidy data set from this copy, averaging each variable (applying the grouping)

## Raw Data Files:
General data can be found in './UCI HAR Dataset':
- **activity_labels.txt** ... connecting activity numbering to literal expressions
- **features.txt** ... column labeling for the 'X_<set>.txt' files (see below)
- **freatures_info.txt** ... further information on the column labeling of the 'X_<set>.txt' files (see below)
- **README.txt** ... some overall information about the data

Specific data can be found in './UCI HAR Dataset/<set>' where <set> can be 'train' and 'test':
- **X_<set>.txt** ... feature vector data as fixed width format (FWF) file. having 16 chars per column (1 space + 1 plus/minus + 14 floating point value)
- **Y_<set>.txt** ... activity link as 1 numeric column. Number between 1 and 6. For literal expression see './UCI HAR Dataset/activity_labels.txt'
- **subject_<set>.txt** ... subject number as 1 numeric column. Number between 1 and 30 for the 30 volunteers.

## Details about the Raw dataset:
- 30 volunteers (age: 19-48)
- 6 activities performed -> activity_labels.txt
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
- capture 3-axial linear acceleration and 3-axial angular velocity at 50 Hz
- randomly:
  - 70% of volunteers = training data  --> 70% of 30 = 21 volunteers
  - 30% of volunteers = test data      --> 30% of 30 = 9 volunteers
- sensor signal sampled in fixed windows --> rows with same subject and activity = different windows
- in each window gravity data was separated from body acceleration data by Butterwort low-pass filter
- from each window a vector of features was optained -> features_info.txt
- complete list of variables of each feature vector -> features.txt
