#load working directory
setwd("/Users/juancbujeda/Dropbox/Education/coursera - exploratory data analysis/ExData_Plotting1")

#get data (see separate file )
source("course_project.1.R")
data_table <- getdata()

globalp_vr <- as.numeric(data_table$Global_active_power)
time_vr <- (data_table$Date)

png(file = "plot2.png",width=480,height=480)

plot(time_vr,globalp_vr,type="l",main="",xlab="",ylab="Global Active Power (Kilowatts)")

dev.off()



