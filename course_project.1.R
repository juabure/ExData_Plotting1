getdata <- function() {
        
        #lubridate makes working with data somewhat easier 
        require("lubridate")
        
        #load the data
        rawdata <- read.table("household_power_consumption.txt",sep=";",header=TRUE, 
                                        stringsAsFactors = FALSE)
        
        #load the working data into a separate table
        workdata <- rawdata
        
        #merge date and time and paste in POSIX format 
        dates <- dmy(workdata$Date)
        times <- workdata$Time
        workdata$Date <- ymd_hms(paste(dates,times))
        
        #select rows with dates between 2007-02-01 and 2007-02-02
        workdata_sel <- workdata[which(year(workdata$Date)== 2007 & 
                                        month(workdata$Date)== 02 & day(workdata$Date) < 3),]
        #export the data 
        workdata_sel

}







