baseFolder <- "./UCI HAR Dataset"
## helper function to generate filepaths
# @param[in] folder   name of the data set folder
#                     "train" or "test"
# @param[in] textFile basename of file:
#                     "subject", "X" or "y"
# @return file path to the selected folder and file
# each filename for this project can be constructed from basename
# and folder name. This helper function utilizes this relation and
# provides a more handy way for getting the appropriate filename
##
generateFilePath <- function(folder, textFile)
{
  filePath <- file.path(baseFolder,folder,paste(textFile,"_",folder,".txt",sep=""))
#  print(filePath) # only for debugging
  filePath
}

## read in a raw data set
# @param[in] folder name of the data set folder
#            "train" or "test"
# @return dataset combining:
#         - the data table in X_test,
#         - the activity for each data line in y_test
#         - the subject for each data line in subject_test
#         - the 
readRawData <- function(folder)
{
  ## === raw data table ===
  # reading the data
  rawData <- read.table(generateFilePath(folder, "X"), header=FALSE)
  # read column labels for the data
  featureLabels <- read.table(file.path(baseFolder,"features.txt"), header=FALSE, stringsAsFactors=FALSE)[,2]
  # apply column labels
  names(rawData) <- featureLabels
  
  ## === activity labeling ===
  # read each data line's activity information (as integer) (1 column)
  activityColumn <- as.factor(read.table(generateFilePath(folder, "y"), header=FALSE)[[1]])
  # read activity conversion table (integer -> literal labels)
  activityConversionTable <- read.table(file.path(baseFolder,"activity_labels.txt"), header=FALSE, stringsAsFactors=TRUE)
  # exchange integers with literal factors for activity labeling
  levels(activityColumn) <- activityConversionTable[[2]]
  # apply activity labeling
  rawData$activity <- activityColumn

  ## === subject ID ===
  # read each data line's subject ID
  subjectIDColumn <- as.factor(read.table(generateFilePath(folder, "subject"), header=FALSE)[[1]])
  # apply each data line's subject ID
  rawData$subjectID <- subjectIDColumn
  
  #for debugging:
  #testing classes: any(sapply(trainRawData,class) == "factor")
  #or: unique(sapply(trainRawData,class))
  
  rawData
}

## combine data sets and extract relevant columns
# @param[in] trainRawData data set of train subject's partition
# @param[in] testRawData data set of test subject's partition
# @return combined data set consisting solely of relevant data
# data sets include a load of data. In this project we only need
# the mean and standard deviation of all data. But still we also
# want to keep the information about the activity, subjectID and
# partition
##
combineRelevantData <- function(trainRawData, testRawData)
{
  # add partition column for train set
  trainRawData$partition <- factor("train")
  # add partition column for test set
  testRawData$partition <- factor("test")
  # combine data sets
  allData <- rbind(trainRawData,testRawData)
  
  # keep only std() and mean() values
  #           + subject, activity and partition columns
  data <- allData[,grep("-std[(]{1}[)]{1}|-mean[(]{1}[)]{1}|^subjectID$|^activity$|^partition$",names(allData))]
  
  data
}

## modify column titles to be descriptive
# @param[in] data data set with improper column names
# @return data set with proper column names (+reordered)
##
setupDescriptiveNames <- function(data)
{
  library(dplyr)
  
  # repair naming error (from raw data) "*BodyBody*" -> "*Body*"
  names(data) <- sub("BodyBody","Body",names(data))
  # dismiss paranthesis
  names(data) <- sub("\\(\\)","",names(data))
  # write magnitude after mean / std
  names(data) <- sub("Mag-mean","-mean-Mag",names(data))
  names(data) <- sub("Mag-std","-std-Mag",names(data))
  # change "-" to "_"
  names(data) <- gsub("-","_",names(data))
  # separate words
  names(data) <- sub("Body","_Body",names(data))
  names(data) <- sub("Gravity","_Gravity",names(data))
  names(data) <- sub("Gyro","_Gyro",names(data))
  names(data) <- sub("Acc","_Acc",names(data))
  names(data) <- sub("Jerk","_Jerk",names(data))
  # lower case letters
  names(data) <- tolower(names(data))
  
  # reorder for activity, subjectid and partition as first columns
  select(data, subjectid, activity, partition, t_body_acc_mean_x:f_body_gyro_jerk_std_mag)
}

## create averaged data set
# @param[in] data data set with activity, subjectid and variable columns
# @return data set with average variable values for each activity and subjectid
##
createAverageData <- function(data)
{
  library(dplyr)
  #copy and group current data
  tempData <- group_by(data, subjectid, activity)
  #average each variable
  summarize_each(tempData, funs(mean), -(subjectid:partition))
}

# read data sets
trainRawData <- readRawData("train")
testRawData <- readRawData("test")

# merge data and extract only mean and std() variables
data <- combineRelevantData(trainRawData, testRawData)

# set descriptive names
data <- setupDescriptiveNames(data)

# create indipendet tidy data set with average variables for activity and subject
averageData <- createAverageData(data)

#output
write.table(data, "data.txt", row.names=FALSE)
write.table(averageData, "averageData.txt", row.names=FALSE)

#tidy data