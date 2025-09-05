url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "House_power_consumption.zip")

unzip("House_power_consumption.zip", exdir = ".")


data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

head(data)
names(data)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subset_data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")



png("plot1.png", width = 480, height = 480)
hist(as.numeric(subset_data$Global_active_power),
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()

