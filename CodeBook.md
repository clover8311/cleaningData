
# code book

The cleaning data project has large raw data files, the info is in the following:

features.txt: Feature names of the data, total 561 features.

activity_labels.txt: Names and IDs for the 6 activities.

X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.

subject_train.txt: It contain a vector of 7352 integers, including the ID of the volunteer related to each of the observations in X_train.txt.
y_train.txt: It contain a vector of 7352 integers, including the ID of the activity related to each of the observations in X_train.txt.

X_test.txt: 2947 observations of the 561 features, for 9 out of the 30 volunteers.

subject_test.txt: It contain a vector of 2947 integers, including the ID of the volunteer related to each of the observations in X_test.txt.
y_test.txt: It contain a vector of 2947 integers, including the ID of the activity related to each of the observations in X_test.txt.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Finally the run_analysis.R will clean the data and generates a data file called tidy.csv as the output.
