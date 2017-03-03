## Generate Plot 3
##
with(hhpc, {
  plot(Sub_metering_1~DT, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~DT, col='Red')
  lines(Sub_metering_3~DT, col='Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## write to png
##
png("plot3.png", width=480, height=480)
with(hhpc, {
  plot(Sub_metering_1~DT, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~DT, col='Red')
  lines(Sub_metering_3~DT, col='Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
