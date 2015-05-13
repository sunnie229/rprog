x <- 1:4
lapply(x, runif) #generates a random uniform number
lapply(x,runif,min=0,max=10)

x <- list(a=matrix(1:4,2,2), b= matrix(1:6,3,2))
#anonymous function to get the columns
#sapply does the same thing as lapply but makes the output look pretty, eg writes output as a vector etc
sapply(x,function(elt) elt[,1])
x<- matrix(rnorm(200),10,20)
#mean of the cols of an array
apply(x,2,mean)
#shortcuts
rowSums
rowMeans
colSums
colMeans(x)
#gives the 25th and 75th percentile for each random variables
apply(x,1,quantile, probs=c(0.25,0.75))

#if we have an array of dim>2
a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)

f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}