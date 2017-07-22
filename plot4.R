read.csv("household_power_consumption.txt",
 sep=";",header=T,na.strings="?")->data
library(dplyr)
filter(data,Date=="1/2/2007" |Date=="2/2/2007")->data
library(lubridate)
dmy(data$Date)->data$Date

png(filename="plot4.png",width=480,height=480,units="px")
attach(data)
ymd_hms(paste(Date,Time))->datetime
par(mfrow=c(2,2))

plot(datetime,Global_active_power,type="l",
 xlab="",ylab="Global Active Power(kilowatts)")

plot(datetime,Voltage,type="l")

plot(datetime,Sub_metering_1,type="l",
 xlab="",ylab="Energy sub metering")
points(datetime,Sub_metering_2,col="red",type="l")
points(datetime,Sub_metering_3,col="blue",type="l")
legend("topright",paste("Sub_metering",1:3,sep="_"),
 col=c("black","red","blue"),lty=1)

plot(datetime,Global_reactive_power,type="l")

detach(data)
dev.off()



