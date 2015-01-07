generateplot4<-function(data)
{
    source("generateplot3.R")
    source("generateplot2.R")
    png("plot4.png")
    par(mfcol = c(2,2))
    generateplot2(data, F, ylab="Global Active Power")
    generateplot3(data, F, bty="n")
    plot(data[,1]+data[,2], data[,5], type="l", main=NA, ylab="Voltage", xlab="datetime")
    plot(data[,1]+data[,2], data[,4], type="l", main=NA, ylab="Global_reactive_power", xlab="datetime")
    dev.off()
}