# For this script, 
# we'll check the mtcars dataset again
data(mtcars)

# Filtering the table - Selecting only the cars with 
# cyl equals to 4.

# The logic is simple, we pass the subset filter to the
# row indexer of the dataframe. Recall that the indexer
# before the comma is related with the rows, 1st dimension
mtcars[mtcars$cyl==4,]

# We can ask for all 4 with cylinders different than 4 by switching
# the condition inside the indexer. != means different than
mtcars[mtcars$cyl!=4,]

# Multiple selections can be achieved with %in%:
method_1 <- mtcars[mtcars$cyl %in% c(4,6),]

# Another way to do it is to provide | (or condition). This
# has the downside of not scalling very well when we have a lot
# of conditions so %in% is prefered.
method_2 <- mtcars[(mtcars$cyl==4) | (mtcars$cyl==6),]

# Are these objects the same? 
method_1==method_2

# We can also provide an and (&) clause to the indexer
mtcars[(mtcars$hp>100) & (mtcars$hp<140),]