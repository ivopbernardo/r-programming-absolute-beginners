# The apply family of functions are one of the most 
# common functions we can use in R 

# Although not only used in the context of dataframes, it
# may be a bit easier to understand what they do in the
# context of this object

# Let's load the iris dataset, another famous example of
# a toy dataset used throughout machine learning
data(iris)

?iris  

# Apply applies something through an object depending on
# a margin (2 equals to columns)

# Below we are applying the mean for each column of
# our dataset
apply(iris, 2, mean)

# Checking the documentation of the function
?apply

# Unfortunately, apply is not convenient when we
# apply certain functions. For example, applying mean
# to dataframe columns when we have a character data type.

# apply really depends on two things - the behavior
# of the function we are applying and the
# object we are applying a function to

# As an example, we can apply max but we get in the return
# a vector of characters, as the max function
# can also be applied to strings
apply(iris, 2, max)

# Let's test mean applied to a numerical matrix
our_matrix = matrix(data = c(1,2,3,4), nrow=2, ncol=2)

apply(our_matrix, 2 ,mean)

# We have alternative functions of the apply family, 
# such as lapply that returns a list - here we can
# conveniently use a mean with lapply

means <- lapply(iris, mean)

# But this is not a silver bullet.
# For example, sum yields an error when applied on a data frame
# with characters - hence we may need to subset
# the table in this case

sum <- lapply(iris, sum)

# Sapply is a wrapper of lapply and much prettier!
sapply(iris[,1:4], min)

# These functions can also apply custom functions
# Bottom line, apply, sapply and lapply apply a function throughout
# an object - they behavior depend on the type of function we are applying
# and the object we are applying them to.

