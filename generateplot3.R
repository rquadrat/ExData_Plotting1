##Plotting routine for plot3.png using the base plotting system
##pngOutput=TRUE plots into a pngfile, pngOutput=FALSE plots to screen

generateplot3<-function(data, pngOutput=T,...)
{
    if (pngOutput)
    {
        png("plot3.png")
    }
    colors<-c("black","red","blue")
    
    ##Plot the three lines from different data columns
    plot(data[,1]+data[,2], data[,7], type="l", main=NA, ylab="Energy sub metering", xlab=NA)
    lines(data[,1]+data[,2], data[,8], col=colors[2])
    lines(data[,1]+data[,2], data[,9], col=colors[3])
    
    ##Place the legend
    legend("topright",col=colors, lwd=1,legend = colnames(data)[7:9], ...)
    
    if (pngOutput)
    {
        dev.off()
    }
}