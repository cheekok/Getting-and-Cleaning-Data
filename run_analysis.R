# 1. Merges the training and the test sets to create one data set.
# Downloads the data file from the link and unzip the file
if(!file.exists("./data")) dir.create("./data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/rawData.zip")
unzip("./data/rawData.zip", exdir = "./data")
# Load data into R
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
# Merges training and test data
trainData <- cbind(subject_train, y_train, X_train)
testData <- cbind(subject_test, y_test, X_test)
fullData <- rbind(trainData, testData)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Load feature names into R
feature <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
feature_Index <- grep("mean|std", feature)
finalData <- fullData[, c(1, 2, feature_Index+2)]
colnames(finalData) <- c("subject", "activity", feature[feature_Index])

# 3. Uses descriptive activity names to name the activities in the data set
# Load activity data into R
activityName <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
# Replace the labels (1 to 6) with activity names
finalData$activity <- factor(finalData$activity, levels = activityName[,1], labels = activityName[,2])

# 4. Appropriately labels the data set with descriptive variable names.
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "TimeDomain", names(finalData))
names(finalData) <- gsub("^f", "FreqDomian", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "Std", names(finalData))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
group_Data <- finalData %>%
        group_by(subject, activity) %>%
        summarise_each(funs(mean))
write.table(group_Data, "./data/TidyData.txt", row.names = FALSE)
