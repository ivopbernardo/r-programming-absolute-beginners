# Functions are one of the most important concepts
# in the R programming language

# R has its own built-in functions such as means:
mean(c(10,20,30,40))

# But R enables us to develop our own custom functions 
# Let's first obtain the mean above using 
# a custom made function

custom_mean <- function() {
  # Defining an example vector
  vector_example = c(10, 20, 30, 40)
  # Adding the values
  sum_value = sum(vector_example)
  # Computing the mean
  sum_value/length(vector_example)
}

# Calling our custom function that sequentially execute the three lines of code
# we see wrapped in the function() definition.

custom_mean()

# It would be interesting if our mean would execute for different vectors.
# Right now, we are hard-coding vector_example = c(10, 20, 30, 40) inside the function.
# Let's change this to provide this vector example when calling the function:

custom_mean <- function(vector_example) {
  # Adding the values
  sum_value = sum(vector_example)
  # Computing the mean
  sum_value/length(vector_example)
}

custom_mean(c(20, 30, 40, 50))

# The last instruction of the function is the one that is returned
# from it. In this case, we are returning sum_value/length(vector_example)

# We are still using a built-in R function -> sum() 
# We can also compute that function by ourselves
# For loop example

custom_mean_loop <- function(vector_example) {
  # First, we initialize sum_value as 0
  sum_value = 0 
  # Our first example of an iterator:
  # We are passing through every element of the
  # vector_example passed in the input and incrementing
  # that value to the sum_value.

  for (i in vector_example) {
    sum_value = sum_value+i
  }
  # Computing the mean, using the accumulated sum_value
  sum_value/length(vector_example)
}

# Checking if our two functions match:
custom_mean(c(20,30,40,50)) == custom_mean_loop(c(20,30,40,50))

# Let's see what happens inside this loop by printing the sum_value
# at each iteration
custom_mean_loop <- function(vector_example) {
  # Adding the values
  sum_value = 0 
  for (i in vector_example) {
    sum_value = sum_value+i
    print(sum_value)
  }
  # Computing the mean
  sum_value/length(vector_example)
}

custom_mean_loop(c(20,30,40,50))


# Another way of controlling the control flow 
# of our function is to use if statements
typeof(c('10','10'))

custom_mean_loop <- function(vector_example) {
  if (typeof(vector_example)=="character") {
    print("Please provide a numeric vector!")
  } else {
    # Adding the values
    sum_value = 0 
    for (i in vector_example) {
      sum_value = sum_value+i
      print(sum_value)
    }
    # Computing the mean
    sum_value/length(vector_example)
  }
}

# In functions, we have Implicit and Explicit returns
# Implicit returns are what happens when your function
# returns your last instruction

# If you use explicit returns you have to use
# return() inside your function 


