## Generate plot 2
with(hhpc, plot(DT, Global_active_power,
                type="l", main = "Date Time Power",
                ylab="Global Active Power (Kilowatts)", 
                xlab=""))

## write plot 2 to png
##
png("plot2.png", width=480, height=480)
with(hhpc, plot(DT, Global_active_power,
                type="l", main = "Date Time Power",
                ylab="Global Active Power (Kilowatts)", 
                xlab=""))
dev.off()
