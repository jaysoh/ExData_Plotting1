#script plot1.R must be run prior to running plot4.R

#setup graph area
par(mfcol = c(2, 2))


#add 1st graph from plot2.R
plot(data_subset$Date_Time, data_subset$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

#add 2nd graph from plot3.R
plot(data_subset$Date_Time, data_subset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data_subset$Date_Time, data_subset$Sub_metering_2, col = "red")
lines(data_subset$Date_Time, data_subset$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, 
       col = c("black", "red", "blue"))

#add 3rd graph
plot(data_subset$Date_Time, data_subset$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

#add 4th graph
plot(data_subset$Date_Time, data_subset$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
