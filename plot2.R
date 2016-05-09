#script plot1.R must be run prior to running plot2.R

#create plot2

plot(data_subset$Date_Time, data_subset$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()