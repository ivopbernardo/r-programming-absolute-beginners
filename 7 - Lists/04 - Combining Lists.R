# Combining lists can be achieved with the c() function!

# Creating list 1 with elements regarding Spain
country_temperatures = list(
  "country"="Spain","months"=c("Jan","Fev","Mar"), "temperatures"=c(10,12,13)
  )


# Creating list 2 with elements regarding France
country_temperatures_1 = list("country_1"="France","months_1"=c("Jan","Fev","Mar"), "temperatures_1"=c(12.5,12,15))

# We can combine these two lists into one single list
# by using the c() command
c(country_temperatures,country_temperatures_1)
