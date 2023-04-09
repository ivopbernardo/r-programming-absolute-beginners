# Although it's interesting that we can access our arrays
# using numeric indexes, this is mostly impractical
# for really large arrays

# Luckily, we can provide names to our dimensions!

# To fill the names of the dimensions of our array,
# we have to pass a list to dimnames argument.

# Note: don't worry too much about this new
# type of object (list), we will study it in
# a subsequent section
country_data <- array(
  c(200,200,300,340,230,120,540,400),
  dim=c(2,2,2),
  dimnames= list(c("Portugal","UK"),
                 c("Population","GDP"),
                 c("2018","2019")))

# Subsetting by named index - for example, extracting
# the Population of Portugal for 2018:
country_data['Portugal','Population','2018']

# What if we search for names of elements in the
# dimensions that do not exist?
country_data['France','Population','2018']

# Remember you can use dim to obtain the dimensions
# and number of elements in country_data
dim(country_data)

# We can also replace elements in the arrays using
# the named version:
country_data['Portugal','Population','2019'] <- 20000

country_data

# There are other cool properties we can use
# in arrays - for example extracting the number
# of rows and number of columns - the 
# size of our first and second dimensions

# This is more meaningful to two dimensional arrays (matrixes)
nrow(country_data)
ncol(country_data)
