getwd()
## Checking whether we have the file "load_data.R" in the current directory?
if (!"load_data.R" %in% list.files()) {
        setwd("~/Desktop/Books/LearningProgCode/DataScience/DataScienceSpecializationJHU/ExploratoryDataAnalaysis")
} 
source("load_data.R") ## sourcing "load_data.R"
## calling graphics device for png format bitmap files
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
## plotting "DateTime" and "Sub_metering_1"
plot(DateTime, Sub_metering_1, 
     type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
## setting the legends
legend("topright", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off() ## shuts down the current device