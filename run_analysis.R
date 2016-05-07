baseFolder <- "./UCI HAR Dataset"
generateFilePath <- function(folder, textFile)
{
  filePath <- file.path(baseFolder,folder,paste(textFile,"_",folder,".txt",sep=""))
  print(filePath)
  filePath
}

readRawData <- function(folder)
{
  df <- read.table(generateFilePath(folder, "X"), header=FALSE)
  featureLabels <- read.table(file.path(baseFolder,"features.txt"), header=FALSE, stringsAsFactors=FALSE)[,2]
  names(df) <- featureLabels
  
  activityColumn <- as.factor(read.table(generateFilePath(folder, "y"), header=FALSE)[[1]])
  activityLabelLinks <- read.table(file.path(baseFolder,"activity_labels.txt"), header=FALSE, stringsAsFactors=TRUE)
  levels(activityColumn) <- activityLabelLinks[[2]]
  df$activity <- activityColumn

  df$subject <- read.table(generateFilePath(folder, "subject"), header=FALSE)[[1]]
  df
}

trainData <- readRawData("train")
trainData$partition <- factor("train")
print("done")
#print(dim(trainData))
testData <- readRawData("test")
testData$partition <- factor("test")
print("done")
#print(dim(testData))
#testing classes: any(sapply(trainData,class) == "factor")
#or: unique(sapply(trainData,class))

allData <- rbind(trainData,testData)
print("done")


#keep only std() and mean() values
data <- allData[,grep("-std[(]{1}[)]{1}|-mean[(]{1}[)]{1}|^subject$|^activity$|^partition$",names(allData))]


#tidy data