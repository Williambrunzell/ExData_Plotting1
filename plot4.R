#Code for Plot 4

par(mfrow= c(2,2))

plot(subdata$datetime, subdata$Global_active_power,
     type="l", ylab = "Global Active Power",
     xlab=NA)
plot(subdata$datetime, subdata$Voltage,
     type="l", ylab = "Voltage",
     xlab=NA)

plot(subdata$datetime, subdata$Sub_metering_1,
     type="l", xlab=NA, ylab="Energy sub metering")
lines(subdata$datetime, subdata$Sub_metering_2, col="red")
lines(subdata$datetime, subdata$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1",
                              "Sub_metering_2",
                              "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty = 1)

plot(subdata$datetime, subdata$Global_reactive_power,
     type="l", ylab = "Global Reactive Power",
     xlab=NA)

dev.copy(png,'plot4.png')
dev.off()

