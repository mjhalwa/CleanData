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


# read data sets
trainRawData <- readRawData("train")
testRawData <- readRawData("test")

# merge data and extract only mean and std() variables
data <- combineRelevantData(trainRawData, testRawData)

# tidy data









#tidy data