data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";", 
                   na.strings = "?",
                   stringsAsFactors = FALSE)


data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subset_data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

datetime <- strptime(paste(subset_data$Date, subset_data$Time),
                     format="%Y-%m-%d %H:%M:%S")
subset_data$Global_active_power <- as.numeric(subset_data$Global_active_power)


png("plot3.png", width = 480, height = 480)

plot(datetime, subset_data$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy Sub Metering")

lines(datetime, subset_data$Sub_metering_2, col = "red")
lines(datetime, subset_data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1)


dev.off()
