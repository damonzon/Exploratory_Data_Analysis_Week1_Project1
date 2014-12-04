# Exploratory Data Analysis - Week 1 - Project1 - Plot3
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
# change string data to numeric
subMeter1 <- as.numeric(hpc2day$Sub_metering_1)
subMeter2 <- as.numeric(hpc2day$Sub_metering_2)
subMeter3 <- as.numeric(hpc2day$Sub_metering_3)
# Create png file in working directory 
png("plot3.png", width=480, height=480)
plot(datetime, subMeter1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subMeter3, type="l", col="blue")
# lty= 1 (line type - solid)   lwd=2.5 (line width)    col = color
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()








