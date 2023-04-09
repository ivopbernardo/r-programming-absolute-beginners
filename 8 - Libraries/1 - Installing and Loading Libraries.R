# Libraries are one important component of the language
# For example, let me try to access the ggplot() function
# that does plots in R

ggplot()

# the code above yields an error - this is because this function
# is only accessible after installing and loading the ggplot2 package
# in the environment.

# in the context of R, package and library are terms that mean the same
# thing and are used exchangeably. They mean that we want to use 
# external code that needs to be installed/imported 

# Installing Libraries using code is easy with the install.packages
# function:
install.packages('ggplot2')

# You can also install 
# using the R Studio UI in Tools -> Install Packages

# To load a library you can use
library(ggplot2)

# Only after loading this library can you access
# the functions that are available in the library
# Library loading is normally called in the beginning
# of each program

# Now running ggplot() will not yield an error (even without arguments):
ggplot()