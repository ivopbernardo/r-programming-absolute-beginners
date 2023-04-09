# Indexing lists is pretty easy

# Let's create a multiple object list and assign different
# names to the elements:
multi_object <- list(
  c(1,2,3), 
  matrix(c(1,2,3,4), ncol=2, nrow=2),
  list(TRUE,0,'C')
)

# Assigning Names
names(multi_object)= c('Vector','Matrix','List')

# If we want to retrieve the Vector that is stored
# in the first position of the list, we have to use the
# double square brackets: [[]]
multi_object[["Vector"]]

# This is a special case in R programming. The [[]] enables us
# to access the underlying object and manipulate the elements on that
# object. If we only use a single pair of square brackets, we will only
# access a high-level representation of that object that won't let us
# manipulate it.

# The same reasoning applies if we use numeric indexes:
multi_object[[1]]

# We can also retrieve by a new syntax - the dollar sign notation 
multi_object$Vector