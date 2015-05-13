corr <- function(directory, threshold=0) {
    data <- numeric(0)
    for (i in 1:332)
    {
        csv<- read.csv(sprintf("~/Desktop/Coursera-data/RProgramming/Programming1/%s/%03d.csv",directory,i))
        #csv <- read.csv(paste("~/Desktop/Coursera-data/RProgramming/Programming1/",directory,"/",sprintf("%03d",i),".csv", sep='')) 
        index<-which(!is.na(csv$sulfate) & !is.na(csv$nitrate))
        if(length(index) > threshold)
        {
            t <- !is.na(csv$sulfate) & !is.na(csv$nitrate)
            x<- csv[t,c(2,3)]
            data<- c(data,cor(x$sulfate,x$nitrate))
        }
        
    }
    data
}
