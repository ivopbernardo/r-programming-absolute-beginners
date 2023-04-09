# Vectors 
# One of the most important object in R is the vector object

# Let's define a vector using the c() function:
c(1,2,3,4)

# And assign it into an object that we can access later in the R Environment
my_vec <- c(1,2,3,4)

# Other way of assigning objects - Similar to what we have
# seen above and for beginners has no practical difference
my_vec = c(1,2,3,4)

# Dividing my_vec by a number will return a new vector
# with the original value divided by the number on the denominator
my_vec/2

# Adding two vectors element by element
# Here we sum the vector with itself
my_vec+my_vec

# Sum operation is a function that we can
# apply to this vector and returns a single number with
# the sum of all values in the vector
sum(my_vec)

# We can also extract median and means from vectors
median(my_vec)
mean(my_vec)

# Comparing elements using comparison elements will return a new vector
# with TRUE / FALSE with the element tested against the condition.

# Notice that equality is represented by two equal symbols (==) because
# one single equal (=) represents assignment.
my_vec < 2

my_vec == 2

# AND / OR Operators are also pretty common in the language.

# AND operations
my_vec == 2 & my_vec == 1

# OR Operations
my_vec == 2 | my_vec == 1

# Let's now see some special cases that produce
# special values in our objects and that need to be addressed

# Division by Zero- this produce infinity Elements
1/0

# Square root of negative numbers - produces NaN (short for Not a Number)
sqrt(-1)

# The effect on infinity and NaN on vector operations is pretty bad
sum(c(1,2,3,1/0))

sum(c(1,2,3,sqrt(-1)))

# Na's - Not Available - Pretty common in data analysis problems
# This is a similar concept to NULL in databases
ages <- c(15,16,NA,15)

# Performing calculations on these elements
# can be pretty frustrating
mean(ages)

# We can rely on the na.rm argument to help us 
# keep in mind that na.rm is only accessible for some functions!
mean(ages, na.rm=TRUE)

# It's important to know which objects are returned from 
# our calculations

# This returns a single number:
mean_ages <- mean(ages, na.rm=TRUE)  

# This returns a new vector: 
sorted_ages <- sort(ages)

# Understanding that different operations return different elements
# is very crucial to manipulate the R language.

# An example of more mathematical calculations between vectors:

vec1 <- c(1,2,3,4)
vec2 <- c(1,2,3,4)

vec1-vec2

vec1+vec2

vec1/vec2

# When you call a function, if you don't provide the 
# name of the argument R will assume the order that you give. 
# The "inherent" order of the arguments that R is expecting 
# can be seen on help or by using ?

help(mean)
?mean

# mean takes x as first argument
# if we don't name the x explicitly, the first argument will 
# be assumed as x, so doing: 
mean(vec1)

# or this:
mean(x=vec1)

# returns exactly the same!

# It's a good practice (particularly in custom functions) 
# to name your arguments - in R built-in function that's not 
# super meaningful because most developers know the arguments 
# they take
