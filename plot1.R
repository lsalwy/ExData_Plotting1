setwd("D:/ANGELA/Coursera/the data scientist's toolbox/Rdir_WL/Exploratory Data Analysis/
      ExData_Plotting1")
my_data <- read.delim("household_power_consumption.txt", sep = ";", 
                      na.strings = "?")
df <- my_data[66637:69516, ]
hist(df$Global_active_power, col="red", main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.copy(png, 'plot1.png')
dev.off()

