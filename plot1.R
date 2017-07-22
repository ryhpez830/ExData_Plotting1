read.csv("household_power_consumption.txt",
 sep=";",header=T,na.strings="?")->data
library(dplyr)
filter(data,Date=="1/2/2007" |Date=="2/2/2007")->data
library(lubridate)
dmy(data$Date)->data$Date


png(filename="plot1.png",width=480,height=480,units="px")
attach(data)

hist(Global_active_power,col="red",
 main="Global Active Power",
 xlab="Global Active Power(kilowatts)")

detach(data)
dev.off()









