# runanalysis
runanalysis does following

1.  It downloads the UCI HAR Dataset data set and puts the zip file working directrory. After it is downloaded, manually unzipped file.
2.  It loads the train and test data sets and appends the two datasets into one data frame. This is done using rbind.
3.  It extracts just the mean and standard deviation from the features data set. This is done using grep.
4.  The mean of activities and subjects are created into a separate tidy data set which is exported into the UCIHARDataset as txt file; this is named average.txt.
