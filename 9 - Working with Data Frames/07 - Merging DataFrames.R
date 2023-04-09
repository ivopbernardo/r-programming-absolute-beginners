# Combining dataframes is another common operation
# First, let's see how we can do this using native R

# Loading mtcars
data(mtcars)

# Creating the car brand to help us on the merge
mtcars$model <- rownames(mtcars)
car_list <- strsplit(mtcars$model, ' ')
mtcars$brand <- sapply(car_list, '[', 1)

# Let's create a brands_origin dataframe that contains the brand
# of the car and the country of origin.
brands_origin <- data.frame(
  brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan", "Italy", "Sweden","Czech Republic")
)

# If we want to combine both of these tables, we can use the merge
# command.
# An inner merge can be achieved by default - inner means that
# only cars with brands in both tables will be on the output.
inner_df <- merge(mtcars,brands_origin,by="brand")

# Left Join can be achieved by passing all.x = TRUE
left_df <- merge(mtcars,brands_origin,by="brand", all.x=TRUE)

# Right Join can be achieved by passing all.y = TRUE
right_df <- merge(mtcars,brands_origin,by="brand", all.y=TRUE)

# Full join can be achieved with all = TRUE 
# Full join brings all rows, regardless of their presence in 
# table a or table b
full_df <- merge(mtcars,brands_origin,by="brand", all=TRUE)