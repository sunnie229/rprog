complete <- function(directory,id=1:332) {
    nobs = numeric(0)
    for (i in id)
    {
        csv <- read.csv(paste("~/Desktop/Coursera-data/RProgramming/Programming1/",directory,"/", sprintf("%03d",i),".csv", sep='')) 
        index<-which(!is.na(csv$sulfate) & !is.na(csv$nitrate))
        nobs = c(nobs,length(index))
    }
    data.frame(id=id,nobs = nobs)
}
