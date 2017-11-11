dat1<-fread("./household_power_consumption.txt", na.strings = "?")
dat1<-dat1[dmy(dat1$Date)==dmy("1/2/2007") | dmy(dat1$Date)==dmy("2/2/2007"),]
dat1$date_time<-as_datetime(paste(dmy(dat1$Date), dat1$Time, sep= " "))

with(dat1,{
  plot(date_time, Sub_metering_1, 
       ylab="Energy sub metering", xlab="", type="l", col="black")

  lines(date_time, Sub_metering_2, col="red")

  lines(date_time, Sub_metering_3, col="blue")

  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty=1,lwd=1, col=c("black","red","blue"))
})

dev.copy(png, file="plot3.png", width = 480, height = 480, units="px")
dev.off()


