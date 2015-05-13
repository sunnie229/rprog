
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




