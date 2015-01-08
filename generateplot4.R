##Plotting routine for plot4.png using the base plotting system

generateplot4<-function(data)
{
    ##Source needed plot functions previous used
    source("generateplot3.R")
    source("generateplot2.R")
    
    png("plot4.png")
    
    ##Set the number of plots to 4. Plots are added columnwise
    par(mfcol = c(2,2))
    
    ##Make the plots
    generateplot2(data, F, ylab="Global Active Power")
    generateplot3(data, F, bty="n")
    plot(data[,1]+data[,2], data[,5], type="l", main=NA, ylab="Voltage", xlab="datetime")
    plot(data[,1]+data[,2], data[,4], type="l", main=NA, ylab="Global_reactive_power", xlab="datetime")
    
    dev.off()
}