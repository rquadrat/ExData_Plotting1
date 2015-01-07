source("PrepareData.R")
source("generateplot2.R")

ConsumptionData<-preparedata()
generateplot2(ConsumptionData, ylab="Global Active Power (kilowatts)")