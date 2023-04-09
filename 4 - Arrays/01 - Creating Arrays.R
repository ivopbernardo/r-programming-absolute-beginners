# Arrays are really cool multi-dimensional objects
# that enable us to extend the power of vectors 

# Example on creating an array with 2 dimensions 
# and two elements on each dimension
my_array <- array(1:4, dim = c(2,2))

# Checking the class of our array
class(my_array)

# 2D arrays are matrix class (which are a special
# type of array) - one-d arrays will be of type 
# array
my_array <- array(1:4, dim = c(2))

class(my_array)

# Using the Dim command to check the dimensions and number
# of elements of our array 
dim(my_array)

# Showing typeof just as an example
typeof(my_array)

# Our dimensions don't stop at 2! we can raise 
# the number of dimensions of array - for example 
# creating a 3-D array:
my_array <- array(1:4, dim = c(2,2,2))

# And checking the class of our 3D array
class(my_array)
