# This script loads data from external sources 
# First we are going to load a CSV file 

# To work files, it's crucial to understand
# the concept of working directories 
getwd()

# You can use setwd to set a working directory
# A relative path is built on top of your working directory
# For the following path to work, the folder data that contains NYC temperature data.csv
# must be on the folder that you see when you return getwd() function.
nyc_temperature = read.csv("./data/NYC temperature data.csv")

# An absolute path would take you the path independently
# of your working directory, example:
path = "C:\\Ivo\\Desktop\\data\\NYC temperature data.csv"

# Absolute paths normally start on the root of your system

# We can read other types of files, such as files in spreadsheet format
# Install readxl package - you can skip this if you have
# the package already installed in your environment
install.packages("readxl")

# load library
library(readxl)

# Read Excel data by providing the file relative path
fbi_crime = read_excel("./data/FBI Crime Data.xls")

# We can also use the library xlsx

# Note: if you are having trouble using this new xlsx package
# check this stack overflow thread 
# https://stackoverflow.com/questions/17376939/problems-when-trying-to-load-a-package-in-r-due-to-rjava

# You may have to install java x64 and the library rJava to make it work 
# in some operating systems

install.packages('xlsx')
library('xlsx')
crime_data_xlsx = read.xlsx("./data/FBI Crime Data.xls",
          header=TRUE, sheetName='16tbl01')

# Typically, readxl is more used today