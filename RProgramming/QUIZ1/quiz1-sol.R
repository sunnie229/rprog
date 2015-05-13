# Q6: If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?
#Ans: a 2X3 matrix 

#Q9: Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
#A: a numeric vector with elements 3, 4, 5, 6
y<-2
x<- 1:4
x+y

#Q11: In the dataset provided for this Quiz, what are the column names of the dataset?
name(data)

#Q12/14:Extract the first and last 2 rows of the data frame and print them to the console. What does the output look like?
data[1:2,]
data[152:153,]

#Q13 How many observations are in this data frame
nrows(data)

#Q15:What is the value of Ozone in the 47th row?
data[47,1]

#Q16: How many missing values are in the Ozone column of this data frame?
bad <- is.na(data[,1])
length(data$Ozone[bad])

#Q17:What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(data$Ozone, na.rm=TRUE)

#Q18:Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
#gives a logical vector that has TRUE if the following is true
subset <-data$Ozone<31 & data$Temp<90 
mean(data$Solar.R[subset], na.rm=TRUE)

#Q19:What is the mean of "Temp" when "Month" is equal to 6?
mean(data$Temp[data$Month == 6], na.rm=TRUE)

#Q20:What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(data$Ozone[data$Month ==5], na.rm=TRUE)