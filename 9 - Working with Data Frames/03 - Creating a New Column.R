# We'll check the mtcars dataset again
data(mtcars)

# Adding a new column is easy - just like
# other objects, we provide a new element to the new element
# we want to create. In this case, we are using the dollar-sign notation
# to state that we want the column hp_wt to be made of the ratio between
# the hp and wt columns.
mtcars$hp_wt <- mtcars$hp/mtcars$wt

# Another way to do it with a different indexer method:
mtcars['hp_wt'] <- mtcars[,'hp']/mtcars[,'wt']

# We can apply other kinds of functions to columns,
# just as we've done in vectors - example of squaring or applying the square root:
mtcars$miles_gallon_squared <- mtcars$mpg**2
mtcars$sqrt_hp <- sqrt(mtcars$hp)

# As long as the element we are passing contains the same number
# of rows of the dataframe, we are ok! For example, we can pass
# the rownames into a column:
mtcars$model <- rownames(mtcars)