# variable storing the datafile 
rawData <- "household_power_consumption.txt"
# reading relevant data
data <- read.table(rawData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# we will only be using data from the dates 2007-02-01 and 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
# construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png("plot1.png", width=480, height=480)
# create histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# save the plot in working directory
dev.off() 