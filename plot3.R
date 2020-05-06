fileconsumptiono <- "household_power_consumption.txt"

tblconsumption <- read.table(fileconsumptiono, header = TRUE, sep = ";")

tblconsumption$Date <- as.Date(strptime(tblconsumption$Date, format = "%d/%m/%Y"))

daysofinterest <- subset(tblconsumption, Date >= "2007-02-01" & Date <="2007-02-02" )

daysofinterest$DateTime <- strptime(paste(as.character(daysofinterest$Date), as.character(daysofinterest$Time), sep = " "), format = "%Y-%m-%d %H:%M:%S")



png("plot4.png")

plot(daysofinterest$DateTime, as.numeric(as.character(daysofinterest$Sub_metering_1)), type = "l", xlab = "", ylab = "Energy sub metering")
lines(daysofinterest$DateTime, as.numeric(as.character(daysofinterest$Sub_metering_2)), col = "red")
lines(daysofinterest$DateTime, daysofinterest$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()

