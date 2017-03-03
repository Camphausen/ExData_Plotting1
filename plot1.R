## Generate Plot 1
hist(hhpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

png("plot1.png", width=480, height=480)
hist(hhpc$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
