##load package
library(resahpe2)
library(dplyr)
##downlaoding of data
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f<-file.path(getwd(),"gdpf.zip")
download.file(url,f)
##data make up
actname<-read.table("./UCIHARDataset/activity_labels.txt")
name_feature<-read.table("./UCIHARDataset/features.txt")
name_feature[,2] <- as.character(name_feature[,2])
extract_feature<-grep(".*mean.*|.*std.*",name_feature[,2])
extract_feature.names<-name_feature[extract_feature,2]

##training
train_x<- read.table("./UCIHARDataset/train/X_train.txt")[extract_feature]
train_y<-read.table("./UCIHARDataset/train/y_train.txt")
train_sub<-read.table("./UCIHARDataset/train/subject_train.txt")
train<-cbind(train_x,train_y,train_sub)
##testing
test_x<- read.table("./UCIHARDataset/test/X_test.txt")[extract_feature]
test_y<-read.table("./UCIHARDataset/test/y_test.txt")
test_sub<-read.table("./UCIHARDataset/test/subject_test.txt")
test<-cbind(test_x,test_y,test_sub)

##merge data
merge_data<-rbind(test,train)
colnames(merge_data)<-c(extract_feature.names,"activity","subject")

##tidy data
average.df <- aggregate(x=merge_data, by=list(act=merge_data$activity, subj=merge_data$subject), FUN=mean)
##average.df <- average.df[, !(colnames(average.df) %in% c("subj", "activity"))]
##str(average.df)
write.table(average.df, './UCIHARDataset/average.txt', row.names = F)
