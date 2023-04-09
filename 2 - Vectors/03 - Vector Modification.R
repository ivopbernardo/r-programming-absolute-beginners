# In this script we are going to
# experiment a bit with vector modifications

# Creating a vector called bananas that represents
# "weights of bananas"
bananas <- c(1.2, 1.4, 2.4, 3.4)

# Rewriting the first banana weight
melons[1] <- 1.8

# Rewriting multiple elements at the same time:
melons[c(3,4)] <- c(4,4)

# Adding a new element by providing a new index:
melons[5] <- 3

# Rewriting based on condition
melons[melons < 2] <- 0

# Removing elements using -
new_melons <- melons[-c(1,5)]