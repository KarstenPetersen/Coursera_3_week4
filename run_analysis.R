library (dplyr)
library (tidyr)


# ---------------------- READ DATA ---------------------------------------
setwd ("D:/Data/Karsten/R/UCI HAR Dataset")

## ---------------------- read labels
features <- read.delim("features.txt",sep=" ",header = F, stringsAsFactors = F)
activity_labels <- read.delim("activity_labels.txt", sep=" ", header=F, stringsAsFactors = F)

## ---------------------- read test files
setwd ("D:/Data/Karsten/R/UCI HAR Dataset/test")

### X_test (data) (headers in features)
widths <- rep(16,561)
X_test <- read.fwf("X_test.txt", widths, header = FALSE, sep = "\t", skip = 0)

### y_test (activity) (headers  in activity_labels)
y_test <- read.delim("y_test.txt", sep=" ", header=F, stringsAsFactors = F) 

### subject_test (subjects)
subject_test <- read.delim("subject_test.txt", sep=" ", header=F, stringsAsFactors = F) 


## ---------------------- read train files
setwd ("D:/Data/Karsten/R/UCI HAR Dataset/train")

### X_train (data) (headers in features)
widths <- rep(16,561)
X_train <- read.fwf("X_train.txt", widths, header = FALSE, sep = "\t", skip = 0)

### y_train (activity) (headers  in activity_labels)
y_train <- read.delim("y_train.txt", sep=" ", header=F, stringsAsFactors = F) 

### subject_train (subjects)
subject_train <- read.delim("subject_train.txt", sep=" ", header=F, stringsAsFactors = F) 


### remove temporary files

rm (widths)
# ---------------------- TIDY DATA ---------------------------------------

## colnames 
names_features <- features[,2]
colnames (X_test) <- names_features
colnames (X_train) <- names_features

## move rownames to column
X_test$id <- rownames(X_test)
X_train$id <- rownames(X_train)

## identify data before merging
X_test$info <- "test" 
X_train$info <- "train" 

## add activity from y...   
X_test$activity <- y_test[,1]
X_train$activity <- y_train[,1]


## add subject from subject...
X_test$subject <- subject_test[,1]
X_train$subject <- subject_train[,1]


# rbind 'test' and 'train' in 'data'
data <- rbind(X_test,X_train)
# data: QUESTION 1 ANSWER

# find columns which contain mean or std (case is ignored) + subject,id,activity,info + rearrange order of columns
cols_mean_std <- grep("mean|std",colnames(data),ignore.case=TRUE)
cols_other <- c(562:565)
data <- data[,c(cols_other,cols_mean_std)]
# data: QUESTION 2 ANSWER

data <- merge(x=data,y=activity_labels,by.x="activity",by.y="V1",all=F)
# data: QUESTION 3 ANSWER


### rename activity label
data <- rename (data,activitylabel=V2)

### reorder data i a logical way
data <- data[c(3,2,4,1,91,5:90)]
# data: QUESTION 4 ANSWER

### rearrange 

tidy_data <- gather (data,measure,value, 6:91)

tidy_data_means <- tidy_data %>%
  group_by(subject,activity,measure) %>%
  summarise (meanvalue=mean(value))

setwd ("D:/Data/Karsten/R")
write.csv(tidy_data_means,file="tidy_data.csv")
# tidy_data: QUESTION 5 ANSWER



