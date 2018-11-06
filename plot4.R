setwd("D:/ANGELA/Coursera/the data scientist's toolbox/Rdir_WL/
      Exploratory Data Analysis/ExData_Plotting1")
my_data <- read.delim("household_power_consumption.txt", sep = ";", na.strings = "?")
df <- my_data[66637:69516, ]
daytime <- paste(df$Date, df$Time)
daytime1 <- strptime(daytime, format= "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2,2))
plot(daytime1, df$Global_active_power, "l", xlab = NA, ylab = "Global Active Power")
plot(daytime1, df$Voltage, "l", xlab = "datetime", ylab = "Voltage")
plot(daytime1, df$Sub_metering_1, "l", xlab= NA, 
      ylab="Energy sub metering", ylim = c(0,max(df$Sub_metering_1)))
lines(daytime1, df$Sub_metering_2, "l", col="red")
lines(daytime1, df$Sub_metering_3, "l", col="blue")
legend("topright", lty= 1, bty = "n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red", "blue"))
plot(daytime1, df$Global_reactive_power, "l", xlab = "datetime", 
     ylab = "Global_relative_power", ylim = c(0.0, 0.50))
dev.copy(png, 'plot4.png')
dev.off