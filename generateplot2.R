##Plotting routine for plot2.png using the base plotting system
##pngOutput=TRUE plots into a pngfile, pngOutput=FALSE plots to screen

generateplot2<-function(data, pngOutput=T, ...)
{
    plot(data[,1]+data[,2], data[,3], type="l", xlab=NA, ...)
    if (pngOutput)
    {
        dev.copy(png, file="plot2.png")
        dev.off()
    }
}