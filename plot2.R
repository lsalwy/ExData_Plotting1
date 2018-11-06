setwd("D:/ANGELA/Coursera/the data scientist's toolbox/Rdir_WL/
      Exploratory Data Analysis/ExData_Plotting1")
my_data <- read.delim("household_power_consumption.txt", sep = ";", 
                      na.strings = "?")
df <- my_data[66637:69516, ]
daytime <- paste(df$Date, df$Time)
daytime1 <- strptime(daytime, format= "%d/%m/%Y %H:%M:%S")
plot(daytime1, df$Global_active_power, "l", xlab = NA, 
     ylab = "Global Active Power (kilowatts)")
dev.copy(png, 'plot2.png')
dev.off()

