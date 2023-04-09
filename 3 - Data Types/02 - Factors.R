# Creating labels as Characters
labels = c('Europe','Africa','Europe',
           'North America','South America','Africa')

# Setting labels as a new data data type - factors
factor_labels = factor(labels)

# Confirming it's a factor
class(factor_labels)
typeof(factor_labels)

# Why does typeof returns an integer? 
as.integer(factor_labels)

# Factors are stored internally as integers to make
# it easier to do comparisons (and also for storage
# efficiency)

# nlevels gives you the number of levels of the
# factor variable
nlevels(factor_labels)

# Why use factors? 
# If some variable is a string, it can take any value.
# with factors it can only take the values you have 
# on levels - this is specially helpful if you have a categorical
# variable 
# Also it enables ordinal strings - let's see that example next

# Create a vector of temperature observations
altitude <- c("High", "Low", "High", "Low", "Medium","Low", "Medium")

# Give levels to it and let R now that is an
# ordinal vector
altitude_vector <- factor(altitude, order = TRUE, 
                          levels = c("Low", "Medium", "High"))

altitude_vector

# Confirming the order below:
as.integer(altitude_vector)