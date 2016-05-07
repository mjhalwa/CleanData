destFile <- "./dataset.zip"
if(!file.exists(destFile))
{
  fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destFile, method="curl")
}
unzipFolder <- "."
unzip(destFile, exdir=unzipFolder)
