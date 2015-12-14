# Getting & Cleaning Data Project
# Brian Bansenauer
##########
library(data.table)
library(plyr)
library(dplyr)
##########
# Load the data
X_train.dt<- fread("./data/train/X_train.txt")
X_test.dt<- fread("./data/test/X_test.txt")
y_train.dt<- fread("./data/train/y_train.txt")
y_test.dt<- fread("./data/test/y_test.txt")
activities.dt<- fread("./data/activity_labels.txt")
features.dt<- fread("./data/features.txt")
subject_test.dt<- fread("./data/test/subject_test.txt")
subject_train.dt<- fread("./data/train/subject_train.txt")
##########
# Append the data, training data first
X.dt <- rbind(X_train.dt,X_test.dt)
y.dt <- rbind(y_train.dt,y_test.dt)
subject.dt <- rbind(subject_train.dt,subject_test.dt)
rm(X_train.dt,X_test.dt,subject_train.dt,y_train.dt,y_test.dt,subject_test.dt)
##########
#Label the data set with descriptive variable names. 
setnames(X.dt,features.dt$V2)
rm(features.dt)
##########
#Extract only measurements of the mean and standard deviation for each measurement
X.dt <- select(X.dt,contains("-mean()"), contains("-std()"))
##########
# Name the activities in the data set
#
# Inspired by http://www.r-statistics.com/2012/01/merging-two-data-frame-objects-while-preserving-the-rows-order/
# Merge sorts by the key, so the basic idea is to add an id column, then merge and resort by id
#y.dt[,id:= 1:10299]
#setkey(y.dt,V1);setkey(activities.dt,V1)
#activity.dt <- y.dt %>%
#  merge(activities.dt) %>% 
#  arrange(id)
#
# Instead, found the plyr "join" method that does not sort by the key
activity.dt <- join(y.dt,activities.dt)
X.dt[,activity:=activity.dt$V2]
rm(y.dt,activity.dt,activities.dt)
##########
#Create a second data set with the average of each variable 
# for each activity and each subject.
#  (need to add the subject column), 
#    then group, summarise by mean, and arrange by subject and activity
 average.dt <- X.dt[,subject:=subject.dt] %>% 
                group_by(subject, activity) %>%
                summarise_each(funs(mean)) %>% 
                arrange(subject,activity)
rm(subject.dt)
View(average.dt)