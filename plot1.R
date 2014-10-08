#load working directory
setwd("/Users/juancbujeda/Dropbox/Education/coursera - exploratory data analysis")

#get data (see separate file )
source("course_project.1.R")
data_table <- getdata()

#load required data into a vector
globalp_vr <- as.numeric(data_table$Global_active_power)

png(file = "plot1.png",width=480,height=480)

hist(globalp_vr,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()

