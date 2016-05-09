#script plot1.R must be run prior to running plot3.R

plot(data_subset$Date_Time, data_subset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")


#add lines
lines(data_subset$Date_Time, data_subset$Sub_metering_2, col = "red")
lines(data_subset$Date_Time, data_subset$Sub_metering_3, col = "blue")


#add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, 
       col = c("black", "red", "blue"))

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()