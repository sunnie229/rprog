library(datasets)
data(iris)
str(iris)
tapply(iris$Sepal.Length,iris$Species,mean)

apply(iris[,1:4],2,mean)

data(mtcars)

mtcars$cyl <- factor(mtcars$cyl)
t<-tapply(mtcars$hp,mtcars$cyl,mean)
t[3]-t[1]

debug(ls)
ls

