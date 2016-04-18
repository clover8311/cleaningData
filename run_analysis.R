#1.Merges the training and the test sets to create one data set.

# read data 
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# add column names
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

featureNames <- read.table("UCI HAR Dataset/features.txt")
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2

names(y_train) <- "activity"
names(y_test) <- "activity"

# merge data into one dataset
test <- cbind(subject_test, y_test, X_test)
train <- cbind(subject_train, y_train, X_train)
combined <- rbind( test, train)


#2. Extracts only the measurements on the mean and standard deviation for each measurement.

# find "mean()" or "std()" columns
meanstdcols <- grepl("mean\\(\\)", names(combined)) | grepl("std\\(\\)", names(combined))
meanstdcols[1:2] <- TRUE
combined <- combined[, meanstdcols]


#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive activity names. 

combined$activity <- factor(combined$activity, labels=c("Walking",
                                                        "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
# create the tidy data set
melted <- melt(combined, id=c("subjectID","activity"))
tidyData <- dcast(melted, subjectID+activity ~ variable, mean)

# create tidy data set to a file
write.csv(tidyData, "tidy.csv", row.names=FALSE)