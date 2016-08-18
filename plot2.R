# variable storing the datafile 
rawData <- "household_power_consumption.txt"
# reading relevant data
data <- read.table(rawData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
# we will only be using data from the dates 2007-02-01 and 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# str date time in YYYY-MM-DD HH:MM:SS TIMEZONE" format example "2007-02-01 00:00:00 IST"
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
# construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png("plot2.png", width=480, height=480)
# chart plotting
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# save the plot
dev.off()