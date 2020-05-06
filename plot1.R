
fileconsumptiono <- "household_power_consumption.txt"

tblconsumption <- read.table(fileconsumptiono, header = TRUE, sep = ";")

tblconsumption$Date <- as.Date(strptime(tblconsumption$Date, format = "%d/%m/%Y"))

daysofinterest <- subset(tblconsumption, Date >= "2007-02-01" & Date <="2007-02-02" )

daysofinterest$Global_active_power == "?")
