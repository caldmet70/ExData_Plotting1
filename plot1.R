getwd()
## Checking whether we have the file "load_data.R" in the current directory?
if (!"load_data.R" %in% list.files()) {
        setwd("~/Desktop/Books/LearningProgCode/DataScience/DataScienceSpecializationJHU/ExploratoryDataAnalaysis")
}
source("load_data.R") ## sourcing "load_data.R"
## calling graphics device for png format bitmap files
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
## computing a histogram of the "Global_active_power"
hist(Global_active_power,
     col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off() ## shuts down the current device