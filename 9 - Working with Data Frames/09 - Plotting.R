# This script reads a dataset and performs 
# some plotting using R
# Let's work with the mtcars dataset again
# as we are already familiar with the data

data(mtcars)

# Plotting weight and horsepower as a scatter plot
plot(mtcars$wt, mtcars$hp, main='Car Weight vs Horsepower')

# Table function helps to summarize our data by counting
# the number of rows by the values of a specific variable
count_cyl <- table(mtcars$cyl)

# We can do barplots with barplot:
barplot(count_cyl, main="Car Distribution", 
        xlab="Number of cylinders", ylab="Number of Cars",
        col = c('red','yellow','salmon'))

# Cheatsheet for colors 
# https://www.nceas.ucsb.edu/sites/default/files/2020-04/colorPaletteCheatsheet.pdf

# Creating boxplots is also easy with the boxplot function
# Notice that the formula in the arguments is a bit different
boxplot(hp~gear,data=mtcars, main="Distribution")

# Creating histograms is also easy:
hist(mtcars$hp, breaks=20, col=c('darkgreen'))

# For plotting, people normally use ggplot2, one of the coolest
# libraries in R (part of the tidyverse universe of packages)
library(ggplot2)

# ggplot is a modular function that works a bit differently. Here is an example
# of building an histogram of Horse Power and adding a title:
(
  ggplot(mtcars, 
       aes(x=hp)
       ) + geom_histogram(color='black', fill='salmon', binwidth=40) 
  + ggtitle('Histogram of HorsePower')
)