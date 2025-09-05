png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2), mfcol = c(2,2))

plot(datetime, subset_data$Global_active_power,
     type = "l",
     ylab = "Gloabl Active Power")

plot(datetime, subset_data$Sub_metering_1,
     type = "l",
     ylab = "Energy Sub Metering")
lines(datetime, subset_data$Sub_metering_2,
      col = "red")
lines(datetime, subset_data$Sub_metering_3, col = "blue")

plot(datetime, subset_data$Voltage,
     type = "l",
     ylab = "Voltage")

plot(datetime, subset_data$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power")



dev.off()