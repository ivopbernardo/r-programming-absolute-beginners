# Here, we will see a more practical use case of the apply family
# of functions.

# Loading mtcars
data(mtcars)

# Let's use sapply to create a column with the
# Brand of the car

# We know that the brand of the car is part of the rownames of
# the mtcars data frame. Let's start by creating the car model as column
mtcars$model <- rownames(mtcars)

# Now, we can use strsplit to split the brand from model
# As the car brand is the first part of the car brand, we can split
# the car model by a blank space
car_list <- strsplit(mtcars$model, ' ')

# This will produce a list of vectors, where each
# vector contains the number of elements related to the blank
# spaces in the car brand.

# Some examples would be: 
# - "Mazda RX4" becomes a vector of two elements with "Mazda" and "RX4"
# - "Hornet 4 Drive" becomes a vector of three elements with "Hornet", "4" and "Drive"

# Given that we know have the car brand in the first position of
# these vectors, we can iterate through them and extract
# the first position.

# This can be done with the apply family! Although it seems complicatedm
# we can break it down in the instruction below:
mtcars$brand <- sapply(car_list, FUN='[', n=1)

# In sapply, we are passing car_list as the list to iterate on
# our function is '[', which is an indexer function (instead of using an aggregator function
# such as mean or max).
# n=1 means that we are trying to index the first element of all of our sub-vectors.