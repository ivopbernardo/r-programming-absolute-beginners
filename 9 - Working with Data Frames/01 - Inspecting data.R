# This scripts reads a dataset and performs 
# some basic and common operations with data.

# Later we will learn how to import external datasets to R - for now let's learn a bit 
# about some of the internal datasets that R has available for us to play with

# Let's take a look at the data() command to check the datasets we have available
data()

# We'll check the mtcars dataset first - a really famous dataset
data(mtcars)

# Calling ? on this dataset gives us more documentation and information
# about columns

?mtcars

# checking first and bottom rows is easy with the head() and tail() commands
head(mtcars, 5)

tail(mtcars, 5)

# Structure provides us information about the structure
str(mtcars)

# Some properties of the dataset include nrow, ncol and names, functions
# we already seen applied in other objects.
nrow(mtcars)

ncol(mtcars)

names(mtcars)

# The powerful summary command:
summary(mtcars)
