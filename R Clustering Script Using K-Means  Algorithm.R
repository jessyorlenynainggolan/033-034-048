# Set Directory
setwd("D:/TB_33_34_48")
getwd()

# Include the dplyr library
install.packages("dplyr")
library(dplyr)

# Get data from csv, and show first 10 rows of data
data <- read.csv("Money.csv", sep = ',')
sample_n(data[2:4], 10)

# Run K-Means algoritma in the dataset
cl<-kmeans(data[2:4], 3)
cl

# To access the values in the kmeans model
cl$size

# Create the plot
plot(data[3:4], col = cl$cluster)

# Give some attracted property to the plot
points(cl$centers, col = 1:2, pch = 8, cex = 2)
cl$centers

#View the data and cluster number in a new table
result <- data.frame(data,cl$cluster)
View(result)
