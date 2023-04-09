# With matrices, we can also perform sum interesting
# calculations

example_matrix <- matrix(data=1:4, nrow=2, ncol=2)
example_matrix_2 <- matrix(data=4:7, nrow=2, ncol=2)

# Adding two matrices
example_matrix + example_matrix_2

# Subtracting two matrices
example_matrix - example_matrix_2

# Running with elements that don't fit the 
# matrix yields a warning
four_col_matrix <- matrix(data=4:8, nrow=2, ncol=4)

# Simple multiplication yields an error - this is the element
# wise multiplication, formally called Hadamard Product
example_matrix * four_col_matrix

# With %*% we perform the dot product of two matrices.
# In the dot product, the inner dimensions must match so applying
# the code below does not yield an error:
example_matrix %*% four_col_matrix
