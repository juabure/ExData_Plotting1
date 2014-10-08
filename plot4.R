#load working directory
setwd("/Users/juancbujeda/Dropbox/Education/coursera - exploratory data analysis")

#get data (see separate file )
source("course_project.1.R")
data_table <- getdata()

#load required data into vectors
globalp_vr <- as.numeric(data_table$Global_active_power)
globalr_vr <- as.numeric(data_table$Global_reactive_power)

submet1_vr <- as.numeric(data_table$Sub_metering_1)
submet2_vr <- as.numeric(data_table$Sub_metering_2)
submet3_vr <- as.numeric(data_table$Sub_metering_3)

voltage_vr <- as.numeric(data_table$Voltage)

time_vr <- (data_table$Date)

png(file = "plot4.png",width=480,height=480)

par(mfrow=c(2,2))

#1st chart
plot(time_vr,globalp_vr,type="l",main="",xlab="",ylab="Global Active Power (Kilowatts)")

#2nd chart
plot(time_vr,voltage_vr,type="l",main="",xlab="datetime",ylab="Voltage")

#3rd chart
plot(time_vr,submet1_vr,col="black",type="l",
     main="",xlab="",ylab="Energy sub metering")
lines(time_vr,submet2_vr,col="red")
lines(time_vr,submet3_vr,col="blue")
legend("topright",col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),pch=c(NA,NA,NA),cex=1,y.intersp=1,bty="n")

#4th chart 
plot(time_vr,globalr_vr,type="l",main="",xlab="datetime",ylab="Global_reactive_power")

par(mfrow=c(1,1))
dev.off()