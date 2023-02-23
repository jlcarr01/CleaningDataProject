## all libraries which are used
library(dplyr)
library(rlang)

## download the files and extract ZIP
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,"dataset.zip",mode = "wb")
unzip("dataset.zip")

## read and manipulate the features file for use later
features <-  read.table("./UCI HAR Dataset/features.txt")
## note which columns are mean and stdev
features <-  mutate(features, use= grepl("mean\\(\\)|std\\(\\)",features$V2))
## NEED TO CHANGE COLUMN NAMES: for readibility
features <-   mutate(features, name =  gsub("\\(|\\)","", features$V2) ) 
features$name <- gsub("-","_", features$name)
## create a vector to be used for final calculations
usefeatures <- filter(features ,use == TRUE)[, 4]

## read files into memory, update column names, and combine with subject
## and activity data and filter for specific columns
## Test Data
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
SubjTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
ActTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(Xtest) <- features$name
names(SubjTest) <- "subject"
names(ActTest) <- "activity"
testFiltered <- Xtest[, features$use]  
testComb <- cbind(SubjTest,ActTest,testFiltered)

# Training Data
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
SubjTrain <-  read.table("./UCI HAR Dataset/train/subject_train.txt")
ActTrain <-  read.table("./UCI HAR Dataset/train/y_train.txt")
names(Xtrain) <- features$name
names(SubjTrain) <- "subject"
names(ActTrain) <- "activity"
trainFiltered <- Xtrain[, features$use] 
trainComb <- cbind(SubjTrain,ActTrain,trainFiltered)

## combine into one long table 

dataset <- rbind(testComb, trainComb) 

## update activities from code to text, then make into factor

dataset$activity <- gsub( 1,"walking",dataset$activity)
dataset$activity <- gsub( 2,"walking_upstairs",dataset$activity)
dataset$activity <- gsub( 3,"walking_downstairs",dataset$activity)
dataset$activity <- gsub( 4,"sitting",dataset$activity)
dataset$activity <- gsub( 5,"standing",dataset$activity)
dataset$activity <- gsub( 6,"lying",dataset$activity)
dataset$activity <- factor(dataset$activity)

## generate table of means of all values

options(dplyr.summarise.inform = FALSE)     ## to suppress warning about grouping
y <- length(usefeatures)
AvgByColumn <- function(df, colName) {
     df %>%
          group_by(subject, activity) %>%
          summarize( mean(!! sym(colName))) %>%
          arrange(subject, activity)
}
for (x in 1:y) {
     col <- usefeatures[x]
     # if x=1 create new data frame
     if (x==1) {
          table5 <- AvgByColumn(dataset,col)
     }
     ## otherwise create a column and bind it to the first one
     else {
          newdata <- AvgByColumn(dataset,col)
          table5 <- cbind(table5,newdata[, 3])
     }
}



