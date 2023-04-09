# Aggregating and sorting are other common operations
# one does with dataframes in R
data(mtcars)

# Creating the car brand to help us on the aggregation
mtcars$model <- rownames(mtcars)
car_list <- strsplit(mtcars$model, ' ')
mtcars$brand <- sapply(car_list, '[', 1)

# Let's aggregate our data so we can check
# the mean of horsepower by each car_brand

# This can be achieved using the aggregate function:
agg_brands <- aggregate(
  mtcars$hp,
  by = list(mtcars$brand),
  FUN=mean
)

# we can set the colnames after or in the creation
# of the aggregate with the function setnames()
colnames(agg_brands) <- c('brand','mean_hp')

# Sorting in an ascending way is simple, we just need to
# pass order to row indexer:
agg_brands[order(agg_brands[,'mean_hp']),]

# We can also sort our table in a descending way
agg_brands[order(-agg_brands[,'mean_hp']),]
