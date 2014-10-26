# Remove old data from memory
rm(list=ls())

# Read the file data into data frames
xtrain=read.table("x_train.txt", sep="", header= FALSE)
xtest=read.table("x_test.txt", sep="", header=FALSE)
ytrain=read.table("y_train.txt", sep="", header= FALSE)
ytest=read.table("y_test.txt", sep="", header=FALSE)
subjecttest=read.table("subject_test.txt", sep="", header=FALSE)
subjecttrain=read.table("subject_train.txt", sep="", header= FALSE)
columns=read.table("features.txt", sep="")
subjecttest=read.table("subject_test.txt", sep="", header=FALSE)
subjecttrain=read.table("subject_train.txt", sep="", header= FALSE)
activity=read.table("activity_labels.txt", sep="", header= FALSE)
bodyaccxtest=read.table("body_acc_x_test.txt", sep="", header= FALSE)

# Name the columns according to the data from "features.txt"
cols=as.list(columns)
columnfact=cols$V2           # make a factor list
colnames(xtrain)=columnfact  # name the columns in xtrain
colnames(xtest)=columnfact   # name the columns in xtest

# Merge the two data frames
tall=rbind(xtrain, xtest)

# make logical vector of columns with MEAN or Standard Deviation in column name
meanstd=grepl("[M,m]ean|[S,s]td", columnfact)
filtered_df=tall[,meanstd]
write.table(filtered_df, "tidyout.txt", sep=",", row.name=FALSE)
# filtered_df is the output data.




