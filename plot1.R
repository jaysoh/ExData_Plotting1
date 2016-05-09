
# Loading the data
# download dataset to working directory
# URL: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# create and format data set 
data <- read.table(unzip("exdata-data-household_power_consumption.zip" ), header = TRUE, sep = ";")
data$Date_Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date , format = "%d/%m/%Y")
data_firsthalf <- subset(data, Date >= as.Date("2007-02-01"))
data_subset <- subset(data_firsthalf, Date <= as.Date("2007-02-02"))
data_subset$Global_active_power <- as.numeric(as.character(data_subset$Global_active_power))
data_subset$Global_reactive_power <- as.numeric(as.character(data_subset$Global_reactive_power))
data_subset$Voltage <- as.numeric(as.character(data_subset$Voltage))
data_subset$Sub_metering_1 <- as.numeric(as.character(data_subset$Sub_metering_1))
data_subset$Sub_metering_2 <- as.numeric(as.character(data_subset$Sub_metering_2))
data_subset$Sub_metering_3 <- as.numeric(as.character(data_subset$Sub_metering_3))

#create plot1
hist(data_subset$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
