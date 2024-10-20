print("Hello World!")
# c() "combines" individual data of same type into a string giving it a structure
# hence it is called a Data Structure/vector.
words <- c("It's", "a", "beautiful", "day.")
words

# repeats the vector for number of times 
rep(words, time = 2)

# outputs range of numbers
numbers <- 1:10
numbers

# sequence 
num <- seq(from = 1, to = 10, by = 2)
num







# DATAFRAMES


# Dataframes are tables to store data in rows and columns.
# Vector(Data type) is a one dimentional list of data. 
# 2 vectors form a dataframe. 

spacecraft <- data.frame(
  names = c("Voyager1", "Voyager2", "Pioneer10"),  #character string vector
  # row.names = c("Voyager1", "Voyager2", "Pioneer10"),
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





# To get user input - "readline"

name <- readline("What's your name? ")
# using "paste" to concatenate strings 
# paste0 function concatenates 2 strings without any spaces
greeting <- paste("Hello, ", name, sep = "")
print(greeting)




#count.R

Mario <- as.integer(readline("Enter votes for Mario: "))
Peach <- as.integer(readline("Enter votes for Peach: "))
Bowser <- as.integer(readline("Enter votes for Bowser: "))

Total <- sum(Mario , Peach , Bowser)

print(paste("Total Votes:", Total))





