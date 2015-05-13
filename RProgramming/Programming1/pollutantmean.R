
pollutantmean <- function(directory,pollutant,id=1:332)
{
    data <- NA
    for(i in id)
    {
        csv <- read.csv(paste("~/Desktop/Coursera-data/RProgramming/Programming1/",directory,"/", sprintf("%03d",i),".csv", sep='')) 
        data <- rbind(data,csv)
    }
    m <- mean(data[[pollutant]], na.rm=TRUE)
    m
}

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



corr <- function(directory, threshold=0) {
    data <- numeric(0)
    for (i in 1:332)
    {
        csv<- read.csv(sprintf("~/Desktop/Coursera-data/RProgramming/Programming1/%s/%03d.csv",directory,i))
        #csv <- read.csv(paste("~/Desktop/Coursera-data/RProgramming/Programming1/",directory,"/",sprintf("%03d",i),".csv", sep='')) 
        index<-which(!is.na(csv$sulfate) & !is.na(csv$nitrate))
        if(length(index) >= threshold)
        {
            t <- !is.na(csv$sulfate) & !is.na(csv$nitrate)
            x<- csv[t,c(2,3)]
            data<- c(data,cor(x$sulfate,x$nitrate))
        }
        
    }
    data
}
