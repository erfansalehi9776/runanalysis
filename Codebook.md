#Codde book
This codebook contains all cloumn variable info and and source fo data taken

##source of data


* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* dataset information: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Experiment description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 
30.

##process of analysis
1. Down load data from source and unzip.
2. First load activity and fetures will be used as naming coloumn.
3. Then load the training and test data in to R and bind coloumn wise separately each set of data. Only extract mean and std features.
4. Then merge both datas set by row wise to get complete data


