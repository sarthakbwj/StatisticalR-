# Outliers are data points which fall outside of the Data range. 

load("temps.RData") # load Data in IDE
mean(temps) 

# index into the data using position values
temps[2] 
temps[4]
temps[7]

# creating a vector(list) of outliers and removing them from
# the original vector - Transforming Vectors
temps[-c(2,4,7)]


# Logical Expressions is a 'comparison operator' that give us an output in TRUE or FALSE (T/F). 
# similar to bools in Python. 

  
# outputs indexes which return TRUE as the result of the evaluating each expression.
which(temps < 0) 


# 'Logical operators' allows the user to combine 2 or more expressing and ask complex questions.
# & - 'and'
# | - 'or'

which(temps < 0 | temps > 60)

# 'any' logical operator = if any data point evaluated results to True, the output is TRUE and vice versa. 
# are any of these values outliers? 
any(temps < 0 | temps > 60)
 
# 'all' logical operator = if all data points evaluated result to True, the output is TRUE and vice versa. 
# are all of these values outliers? 
all(temps < 0 | temps > 60)

