# Adding or removing list elements is relatively easy.

# Starting by creating an example_list:
example_list <- list(c('a','b','c'), array(1:10, dim=c(2,5)))

# We can add elements by positioning them
# in a new index that doesn't exist - in the case below we are
# adding a new list element with the character 'abc'.
example_list[3] <- 'abc'

# To add / remove elements, it's sufficient to access the high-level
# representation of the underlying object. A single pair of square
# brackets does the job!

# To remove elements from list we can assign them to
# the element NULL
example_list[3] <- NULL