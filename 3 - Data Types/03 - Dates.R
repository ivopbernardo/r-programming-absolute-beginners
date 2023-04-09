# Dates are another interesting type of data

dates <- as.Date(c('2007-02-01', '2007-02-02'))

# Checking class and typeof our dates

class(dates)
typeof(dates)

# Dates are stored as integers - the number of days
# since 1 Jan 1970
as.numeric(dates)

# We can also feed date formats in the conversion, depending
# on the format we have on our dates
dates_f1 <- as.Date(c('02/01/2007', '02/02/2007'), format="%m/%d/%Y")

# Another type of format
dates_f2 <- as.Date(c('01202009'), format="%M%d%Y")

# if we have year as lowercase the format expects
# a two digit year and it gets the date wrong
dates_f3 <- as.Date(c('01202009'), format="%M%d%y")

# To extract the month
format(dates_f1, '%m')

# And extracting the year
format(dates_f1, '%Y')

# A nice resource on date formats
# https://www.r-bloggers.com/2013/08/date-formats-in-r/
  