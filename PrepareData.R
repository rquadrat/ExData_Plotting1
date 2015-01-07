preparedata<-function(){
    ## Read input data
    fulldataset<-read.table("household_power_consumption.txt", header=T, sep=";",na.strings = "?")
    ##Load lubridate package for date and time conversions
    library("lubridate")
    fulldataset$Date<-dmy(fulldataset$Date)
    ##Subsetting data
    index<-fulldataset$Date==ymd("2007-02-01") | fulldataset$Date==ymd("2007-02-02")
    dataset<-fulldataset[index,]
    dataset$Time<-hms(dataset$Time)
    dataset
}