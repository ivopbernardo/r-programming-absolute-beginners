# Different variables / objects have different
# data types - this is a central concept in the R programming language

# Checking the Class of a Numeric Variable using class
class(1)

class(1.0)

# Underlying data types are checked 
# with the typeof command - this is also called
# storage level

typeof(1)

# Integer Variables are defined when we pass an L attached to the number
# R stores numbers as "numeric" by default if we don't pass the L
class(1L)

# String variables
class("test")

# Logical Variables (or Boolean)
class(TRUE)

# We can test classes with is. :
is.character("test")
is.character(1)
is.numeric(1)
is.logical(TRUE)

# Casting or Converting is also simple, let's start
# by defining a string variable with the characters 10

# Notice that this is not a numeric variable but a string
# variable
var <- "10"

# This is one of the ways to convert variables into 
# arbitrary data types
# Below, we convert var to numeric
var_cast <- as(var,"numeric")

class(var)
class(var_cast)

# We can also extend the as() family
# to name the class that we want to convert to immediately:
as.numeric("290")

# Converting numerics to strings
as.character(290)

# We can also convert vector objects
as.character(c(1,2,3,4,5))

# Another example, converting logical objects into numbers
bool_vector <- c(TRUE,FALSE,FALSE,FALSE,TRUE)

# This will output a vector of 0's and 1's
as.numeric(bool_vector)


