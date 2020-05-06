
fileconsumptiono <- "household_power_consumption.txt"

tblconsumption <- read.table(fileconsumptiono, header = TRUE, sep = ";")

tblconsumption$Date <- as.Date(strptime(tblconsumption$Date, format = "%d/%m/%Y"))

daysofinterest <- subset(tblconsumption, Date >= "2007-02-01" & Date <="2007-02-02" )


daysofinterest$Global_active_power <- as.numeric(as.character(daysofinterest$Global_active_power))

png("plot1.png")

hist(daysofinterest$Global_active_power, breaks = 20, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

dev.off()
