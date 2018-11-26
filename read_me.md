The project is the week 4 assignment for the course "Getting and Cleaning Data" from Coursera

#Overview 

The project consists of the following files:

* tidy_data_means.csv
* codebook.md
* read_me.md
* run_analysis.R

# tidy_data_means.csv 
This file contains the final data, which is a tidy data set with the average of each variable for each activity and each subject.

# codebook.md
This file contains a description of the variables in the file 'tidy_data_means.csv'

# read_me.md
This file

# run_analysis.R
Contains the R script that load the original data and convert them to a tidy data set that meet the requirments of the assignment 

First the original data from the study is downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data is unzipped to the folder: 'UCI HAR Dataset'.

The R script is explained in details in the code. A summary is presented below:
-------------------------------------------------------------------------------
Load the features and activity_labels

Load the test dataset, including activity and subjects to dataframe X_test

Load the training dataset, including activity and subjects to dataframe X_train

Add 'id' that identifies the row number from each of the above dataframes and 'info' that identify if the data is test or training. This makes it possible to track the data in the merged dataset to the original files 

Add 'subject' and 'activity' to the above dataframes

Merge the X_test and X_train dataframes to one dataframe named 'data'

Identify columns that contain "mean" or "std" and keep only those measures  

Add a label to Activity by mergeing 

Rename and reorder columns 

The dataset is not tidy yet. Tidy data by gathering the measures in one 'measure' variable, that contains the type of measure and a 'value' of that measure.

Calculate the means from that dataset in the dataframe Tidy_data_means

Export the file to the current directory


