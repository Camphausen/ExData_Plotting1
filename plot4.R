## Generate Plot 4
with(hhpc, {
  plot(Global_active_power ~ DT, type = "l", 
       ylab = "Global Active Power", xlab = "")
  plot(Voltage ~ DT, type = "l", ylab = "Voltage", xlab = "datetime")
  plot(Sub_metering_1 ~ DT, type = "l", ylab = "Energy sub metering",
       xlab = "")
  lines(Sub_metering_2 ~ DT, col = 'Red')
  lines(Sub_metering_3 ~ DT, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power ~ DT, type = "l", 
       ylab = "Global_rective_power", xlab = "datetime")
})

## write to png
##
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(hhpc, {
  plot(Global_active_power ~ DT, type = "l", 
       ylab = "Global Active Power", xlab = "")
  plot(Voltage ~ DT, type = "l", ylab = "Voltage", xlab = "datetime")
  plot(Sub_metering_1 ~ DT, type = "l", ylab = "Energy sub metering",
       xlab = "")
  lines(Sub_metering_2 ~ DT, col = 'Red')
  lines(Sub_metering_3 ~ DT, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power ~ DT, type = "l", 
       ylab = "Global_rective_power", xlab = "datetime")
})
dev.off()







