# We can combine arrays row-wise or column-wise.
# These properties also apply to data frames, 
# another object we will study in the future

# Let's create two 2-by-2 arrays:
my_array_1 <- array(1:4, dim=c(2,2))

my_array_2 <- array(10:14, dim=c(2,2))

# to combine the elements row wise:
rbind(my_array_1, my_array_2)

# to combine the elements column wise 
cbind(my_array_1, my_array_2)

# Watch out for different number of dimensions 
# when combining arrays! 

# Creating a 10 by 4 2D array:
my_different_array <- array(10:14, dim=c(10,4))

# The following will throw an error due to a mismatch
# in the number of columns or rows of the arrays:
rbind(my_different_array, my_array_1)

cbind(my_different_array, my_array_1)

