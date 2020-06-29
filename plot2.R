#Code for Plot 2

plot(subdata$datetime, subdata$Global_active_power,
     type="l", ylab = "Global Active Power (kilowatts)",
     xlab=NA)

dev.copy(png,'plot2.png')
dev.off()