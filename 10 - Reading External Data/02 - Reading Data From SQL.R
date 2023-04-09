# Loading data from Databases 
# You can only run this piece of code if you
# set up a odbc datasource in your operating system
# in this example, I'm using a MYSQL database
 
# install mysql:
# https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/

# Setup odbc data source: 
# https://kb.iu.edu/d/amsw

# Databases are one of the common systems used in organizations
# to store data and move files around - R has some cool libraries that
# we can use to load tables directly from SQL

# Install package RODBC
install.packages("RODBC")

# Load the RODBC library
library(RODBC)

# Open Channel to Database
channel <- odbcConnect("mysqlconn", uid="root")

# Get result using a query - this will load the table directly into a dataframe
result1 <- sqlQuery(channel, paste("SELECT * from sakila.city"))

# Always a good idea to close the connection after working with the
# data in R
close(channel)