# Let's start by creating Countries Vector with population numbers

countries <- c(10276617,67545757,67020000)

# Visualizing our numbers
countries

# How many countries do we have? - length can help us

length(countries)

# Sorting vectors can be done with sort() 
sort(countries)

# In ascending Order, by providing a new argument
sort(countries, decreasing=TRUE)

# We can assign index names to vectors 
names(countries) <- c('Portugal','United Kingdom','France')

# Assessing vector elements by name
countries['Portugal']

# And what about multiple countries?
# Will this work? - No
countries['Portugal','United Kingdom']

# We have to pass a vector to the index!
countries[c('Portugal','United Kingdom')]

# We can also access elements by numerical position 
countries[1]

# And also use slicing
countries[1:2]

# Accessing the last country using the length property
countries[length(countries)]

# Returning indexes with which function
which(countries > 11000000)

# If we want the names of the countries that match the condition
# we can use names
names(which(countries > 11000000))