# Exploratory Data Analysis - Week 1 - Project1 - Plot2
# read data
hpcdata<-read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
# select data for 2 days
# %in% is currently defined as 
# "%in%" <- function(x, table) match(x, table, nomatch = 0) > 0
hpc2day <- hpcdata[hpcdata$Date %in% c("1/2/2007","2/2/2007") ,]
# ?strptime --- Date-time Conversion Functions to and from Character
datetime <- strptime(paste(hpc2day$Date, hpc2day$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
# change string data to numeric
gap<- as.numeric(hpc2day$Global_active_power)
# Create png file in working directory 
png("plot2.png", width=480, height=480)
# type = "l' connect the data points with lines
# Create a plot ---  no horizontal label or title---using Base Plotting System
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# close the plot functiondev.off()
dev.off()

