Getting and Cleaning Data

The R script will do the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Copy the R script to your working directory.
The R script will create a data folder in your working directory and download the data source and unzip the data to a UCI HAR Dataset folder.
The R script will generate a new file Tidydata.txt in your data directory after going through the tidying steps.