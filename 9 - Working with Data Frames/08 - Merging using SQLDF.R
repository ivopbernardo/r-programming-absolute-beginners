# We can combine tables using typical SQL Code
# If you are more used to use SQL code, this can be a
# good way for you to start adapting to R code

# Loading mtcars
data(mtcars)

# Creating the car brand to help us on the merge
mtcars$model <- rownames(mtcars)
car_list <- strsplit(mtcars$model, ' ')
mtcars$brand <- sapply(car_list, '[', 1)

# Creating the brands origin again
brands_origin <- data.frame(
  brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan", "Italy", "Sweden","Czech Republic")
)

# We can use the SQLDF library - This is an example of an Inner merge
# but using the SQL syntax

install.packages('sqldf')

library(sqldf)

# Using SQL code inside R
df_result <- sqldf("SELECT a.*, b.*
              FROM mtcars as a
              INNER JOIN brands_origin as b USING(brand)")
