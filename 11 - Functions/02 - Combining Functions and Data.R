# Let's see how we can combine functions and using data frames
# at the same time.

# In this script, we have a very simple exercise of loading a dataset and
# doing some visualizations using functions.

# In your scripts, the libraries you are using should go on top:
library(ggplot2)

# Load the walmart_data and walmart_features files 
walmart_data = read.csv('./data/walmart_data.csv')
walmart_features = read.csv('./data/walmart_features.csv')

# We can really harness the power of functions to 
# plot any weekly sales by department and store

sales_dept_store <- function(store, department) {
  # First, we need to subset by store and department
  filtered_table = (
    walmart_data[(walmart_data$Store==store) & (walmart_data$Dept == department),]
  )
  # Then, we can use our filtered table to plot the data
  # Here we're also using ggplot2
  (
    ggplot(filtered_table, 
           aes(x=as.Date(filtered_table$Date), y=filtered_table$Weekly_Sales, group=1)) 
    + geom_line(color='orange') + geom_point(color='darkorange')+
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5))
  )
}

# Let's call our custom sales_dept_store function for two different
# stores
sales_dept_store(20,3)
sales_dept_store(10,3)

# Let's add a color parameter to our function to extend its functionality:
sales_dept_store <- function(store, department, color_plot) {
  # First, we need to subset
  filtered_table = (
    walmart_data[(walmart_data$Store==store) & (walmart_data$Dept == department),]
  )
  # Then, we can use our filtered table to plot the data
  (
    ggplot(filtered_table, 
           aes(x=as.Date(filtered_table$Date), y=filtered_table$Weekly_Sales, group=1)) 
    + geom_line(color=color_plot) + geom_point(color=color_plot)+
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5))
  )
}

sales_dept_store(20,3, 'blue')
sales_dept_store(10,3, 'red')
sales_dept_store(10,5, 'red')
