# In this script we explore the environment
# and objects

# Creating variables is done by assignment:
my_vector <- c(1,2,3,4)

# Removing specific objects from the environment can be done with rm: 
rm(my_vector)

# Listing all variables available in the environment 
ls()

# Objects can also be simple strings
char_var <- 'abc'

# Using a combination of rm and ls will clean all variables
# in the environment
rm(list = ls())