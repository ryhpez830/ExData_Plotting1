read.csv("household_power_consumption.txt",
 sep=";",header=T,na.strings="?")->data
library(dplyr)
filter(data,Date=="1/2/2007" |
 Date=="2/2/2007")->data
library(lubridate)
dmy(data$Date)->data$Date

attach(data)

hist(Global_active_power,col="red",
 main="Global Active Power",
 xlab="Global Active Power(kilowatts)")

detach(data)







