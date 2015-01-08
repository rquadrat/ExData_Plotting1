##Source plot generating Routines. The first script loads and processes data, the second script makes the plot
##Data and scripts have to be in the working directory
source("PrepareData.R")
source("generateplot4.R")

##Call the previously sourced scripts
ConsumptionData<-preparedata()
generateplot4(ConsumptionData)