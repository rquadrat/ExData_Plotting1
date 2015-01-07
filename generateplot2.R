generateplot2<-function(data, pngOutput=T, ...)
{
    plot(data[,1]+data[,2], data[,3], type="l", xlab=NA, ...)
    if (pngOutput)
    {
        dev.copy(png, file="plot2.png")
        dev.off()
    }
}