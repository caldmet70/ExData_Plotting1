getwd()
setwd("~/Desktop/Books/LearningProgCode/DataScience/DataScienceSpecializationJHU/ExploratoryDataAnalaysis")
## Here we are loading the "household_power_consumption.txt" data from UC Irvine
## Machine Learning Repository
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                   colClasses = c("character", "character", rep("numeric", 7)), na = "?")
dim(data) # data frame of dim 2075259 by 9
## the data is attached to R search path, i.e. database is searched by R when
## evaluating a variable, so objects in the databse can be accessed by simply 
## giving their names.
attach(data)
## We only need data of 2 days in February 2007
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
## the data is attached to R search path, i.e. database is searched by R when
## evaluating a variable, so objects in the databse can be accessed by simply 
## giving their names.
attach(newData)
## concatenate vectors after converting to character, i.e. one or more R objects
## to be converted to character vectors
x <- paste(Date, Time)
## convert between character representations and objects of classes "POSIXlt" and "POSIXct" 
## representing calendar dates and times.
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # a data frame of 2880 by 10
## the data is attached to R search path, i.e. database is searched by R when
## evaluating a variable, so objects in the databse can be accessed by simply 
## giving their names.
attach(newData)


