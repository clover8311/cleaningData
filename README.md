# cleaningData

The steps of this project

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The run_analysis.R file works on the raw data and will generate tidy.csv output. The R code file requires reshape2 library. The raw files include test, train and some feature txt file in provided by this project.
