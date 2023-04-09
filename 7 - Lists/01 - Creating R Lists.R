# In this script, we will explore a very flexible R object - the R list!

# Arrays are very interesting but have a major setback.
# With arrays, we can't hold different types of objects

# in the example below, the array will be stored as numeric
array(c(1,2,3))

# If we have a single element that is a character, the entire array
# will be treated as a character type
my_ar = array(c(1,2,"A"))
typeof(my_ar)

# What happens with lists? - Lists enable you to have multiple data types 
# or even multiple objects

# The list below contains three types of elements, a single character,
# and two vectors:

country_temperatures = list(
  "country"="Portugal",
  "months"=c("Jan","Fev","Mar"), 
  "temperatures"=c(12.5,20.1,22))

# We can even have other objects inside lists, such as
# matrices or lists:

multi_object <- list(
  c(1,2,3), 
  matrix(c(1,2,3,4), ncol=2, nrow=2),
  list(TRUE,0,'C')
)

# And we can assign names to our list elements
# even after creating our list:
names(multi_object)= c('Vector','Matrix','List')

# We can also use the str function to obtain the structure
# of the list object
str(multi_object)

# And the length, that will give us the number of elements in the list:
length(multi_object)