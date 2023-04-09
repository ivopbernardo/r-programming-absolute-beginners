# We've already checked matrices in the arrays section
# Matrices are basically 2D arrays!

# In this script, we are going to check how 
# to create matrices with the special matrix() constructor

# Creating a matrix using matrix() and array() 
# functions will produce the same results

example_matrix <- array(1:4, dim=c(2,2))

example_matrix_2 <- matrix(data=1:4, nrow=2, ncol=2)

# Comparing the two 
example_matrix == example_matrix_2

# Checking some attributes of matrices, similar to what we've seen
# with arrays
dim(example_matrix_2) 

nrow(example_matrix_2)
ncol(example_matrix_2)

class(example_matrix_2)

# With the matrix constructor, we can
# access some new arguments in the functions
# for example, byrow fills the matrix with different orientation
example_matrix_2 <- matrix(data=1:4, nrow=2, ncol=2, byrow=TRUE)