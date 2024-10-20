# Dataframes are tables to store data in rows and columns.
# Vector(Data type) is a one dimentional list of data. 
# 2 vectors form a dataframe. 

spacecraft <- data.frame(
  row.names = c("Voyager1", "Voyager2", "Voyager10"),  #character string vector
  distance = c(163,136,80)  #numeric vector
) 
# 2 Data types cannot exist together in one vector, they can exist separately in distinct vectors. 

spacecraft 

# $ + name of the column outputs the column
spacecraft$name

# outputs 1st column, subset of the dataframe. 
spacecraft[1]

# outputs 1st column as a vector(list)
spacecraft[[1]]

# outputs the desired index.[row,column]
spacecraft[1,2]

# outputs the column of the index
spacecraft[, 1]

# outputs the row of the index
spacecraft[1,]
