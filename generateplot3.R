generateplot3<-function(data, pngOutput=T,...)
{
    if (pngOutput)
    {
        png("plot3.png")
    }
    colors<-c("black","red","blue")
    plot(data[,1]+data[,2], data[,7], type="l", main=NA, ylab="Energy sub metering", xlab=NA)
    lines(data[,1]+data[,2], data[,8], col=colors[2])
    lines(data[,1]+data[,2], data[,9], col=colors[3])
    legend("topright",col=colors, lwd=1,legend = colnames(data)[7:9], ...)
    if (pngOutput)
    {
        dev.off()
    }
}