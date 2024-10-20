# Dataframes are tables to store data in rows and columns.
# Vector(Data type) is a one dimentional list of data. 
# 2 vectors form a dataframe. 

spacecraft <- data.frame(
  name = c("Voyager1", "Voyager2", "Voyager10"),  #character string vector
  distance = c(163,136,80)  #numeric vector
) 
# 2 Data types cannot exist together in one vector, they can exist separately in distinct vectors. 

spacecraft 

# $ + name of the column outputs the column
spacecraft$name

