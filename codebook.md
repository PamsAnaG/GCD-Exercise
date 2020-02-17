## Code Book

This code book wil describe the data used for this project and the process to achieve the tidy data set.

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

To get more information about the files, use: `README.txt` included in the data set package


## Steps to get the tidy data set

1. Put the data sets in you working directory
2. Load the data sets
3. Merge the training and the test sets
4. Add column name for subject files
5. Add column names for measurement files
6. Create measurements on the mean and standard
7. Describe activity names
8. Create a tidy data set (CSV) file



