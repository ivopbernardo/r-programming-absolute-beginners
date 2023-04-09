# We can also remove some rows or columns from data frames

countries_data <- data.frame(country=c("Portugal","France","UK"), 
                       population = c(10280000,66990000,66650000),
                       EU= c(TRUE,TRUE,FALSE))

# Example on how to remove rows - in this case
# we are removing the third row (UK)

# Notice that we can only remove rows with the "-" by referring
# the numeric index, which is a setback
countries_data <- countries_data[-3,]

# Example on how to remove columns - in this case
# the EU column
countries_data[, 'EU'] <- NULL

