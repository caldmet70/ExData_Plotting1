getwd()
## Checking whether we have the file "load_data.R" in the current directory?
if (!"load_data.R" %in% list.files()) {
        setwd("~/Desktop/Books/LearningProgCode/DataScience/DataScienceSpecializationJHU/ExploratoryDataAnalaysis")
}
source("load_data.R") ## sourcing the "load_data.R"
## calling graphics device for png format bitmap files
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
## plotting "DateTime" and "Global_active_power"
plot(DateTime, Global_active_power, 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off() ## shuts down the current device