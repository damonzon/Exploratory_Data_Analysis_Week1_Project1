# Exploratory Data Analysis - Week 1 - Project1 - Plot1

# read data
hpcdata<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
# select data for 2 days
# %in% is currently defined as 
# "%in%" <- function(x, table) match(x, table, nomatch = 0) > 0
hpc2day <- hpcdata[hpcdata$Date %in% c("1/2/2007","2/2/2007") ,]
# change string data to numeric
gap <- as.numeric(hpc2day$Global_active_power)
# Create a png file
png("plot1.png", width=480, height=480)
# Create a histogram with color and titles --- using Base Plotting System
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# Close the png function
dev.off()
# The End
