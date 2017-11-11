dat1<-fread("./household_power_consumption.txt", na.strings = "?")
dat1<-dat1[dmy(dat1$Date)==dmy("1/2/2007") | dmy(dat1$Date)==dmy("2/2/2007"),]
dat1$date_time<-as_datetime(paste(dmy(dat1$Date), dat1$Time, sep= " "))

with(dat1,{
  plot(date_time, Global_active_power, ylab="Global Active Power (kilowatt)", xlab="", type="l")
})

dev.copy(png, file="plot2.png", width = 480, height = 480, units="px")
dev.off()


