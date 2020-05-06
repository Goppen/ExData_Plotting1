fileconsumptiono <- "household_power_consumption.txt"

tblconsumption <- read.table(fileconsumptiono, header = TRUE, sep = ";")

tblconsumption$Date <- as.Date(strptime(tblconsumption$Date, format = "%d/%m/%Y"))

daysofinterest <- subset(tblconsumption, Date >= "2007-02-01" & Date <="2007-02-02" )

daysofinterest$DateTime <- strptime(paste(as.character(daysofinterest$Date), as.character(daysofinterest$Time), sep = " "), format = "%Y-%m-%d %H:%M:%S")

head(daysofinterest$DateTime)

png("plot2.png")

plot(daysofinterest$DateTime, as.numeric(as.character(daysofinterest$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

