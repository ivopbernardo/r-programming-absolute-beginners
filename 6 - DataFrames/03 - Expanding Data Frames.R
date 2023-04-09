# After creating data frames, we can change them by adding new rows
# or columns

# Let's use the countries_data again
countries_data <- data.frame(country=c("Portugal","France","UK"), 
                       population = c(10280000,66990000,66650000),
                       EU= c(TRUE,TRUE,FALSE))

# Creating the same data structure with Spain information
spain_data <- data.frame(country=c("Spain"), 
                         population = c(46754778 ),
                         EU= c(TRUE))

# Add spain's data to countries data with rbind

countries_data <- rbind(countries_data,spain_data)

# Adding columns can be done with cbind:
capital = c('Lisbon','Paris','London','Madrid')
countries_data_with_capital = cbind(countries_data,capital)