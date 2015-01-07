generateplot1<-function(data)
{
    png("plot1.png")
    hist(data[,3], col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
    dev.off()
}