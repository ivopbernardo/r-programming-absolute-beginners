# Creating our Data Frame again
countries_data <- data.frame(country=c("Portugal","France","UK"), 
                       population = c(10280000,66990000,66650000),
                       EU= c(TRUE,TRUE,FALSE))

# Selecting the first row using a numeric index
countries_data[1 ,]


# Selecting the first column using a numeric index
countries_data[,1]

# Indexing rows and columns in dataframes is similar
# to matrices

# Let's create a new df with row names
countries_data_rownames <- data.frame(
                             population = c(10280000,66990000,66650000),
                             EU= c(TRUE,TRUE,FALSE),
                             row.names=c("Portugal","France","UK"))

# We can now index by names as well:
countries_data_rownames['Portugal',]

countries_data_rownames[,'population']

# We can also change elements using indexes
# just as we did in arrays and matrixes

# In the example below, we will change Portugal's population to 1
countries_data_rownames['Portugal','population'] <- 1