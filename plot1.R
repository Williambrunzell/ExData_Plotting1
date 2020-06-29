install.packages("tidyverse")
install.packages("lubridate")
library(tidyverse)
library(lubridate)

#Code for reading the data using TidyVerse

data <- read.delim("household_power_consumption.txt", header=TRUE, sep=";")
data$datetime <- dmy_hms(paste(data$Date, data$Time))
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)

subdata<- data %>%
  filter(Date=="2007-02-01"| Date=="2007-02-02")

subdata[3:9] <- sapply(subdata[3:9],as.numeric)

#Code for Plot 1
hist(subdata$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)",
     main="Global Active Power")

dev.copy(png,'plot1.png')
dev.off()