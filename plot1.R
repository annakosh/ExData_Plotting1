setwd("F:/Coursera/ExploratoryDataAnalysis/Week1/Assignment")
library(dplyr)
library(lubridate)
library(varhandle)
library(data.table)

dat1<-fread("./household_power_consumption.txt", na.strings = "?")
dat1<-dat1[dmy(dat1$Date)==dmy("1/2/2007") | dmy(dat1$Date)==dmy("2/2/2007"),]

hist(dat1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width = 480, height = 480, units = "px")
dev.off()
