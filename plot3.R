#Code for Plot 3

plot(subdata$datetime, subdata$Sub_metering_1,
     type="l", xlab=NA, ylab="Energy sub metering")
lines(subdata$datetime, subdata$Sub_metering_2, col="red")
lines(subdata$datetime, subdata$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1",
                              "Sub_metering_2",
                              "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty = 1)
dev.copy(png,'plot3.png')
dev.off()