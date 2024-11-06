# 'cat' means concatenate and print. 

get_votes <- function(prompt = "Enter Votes: ") {    # create function and parameter
  votes <- suppressWarnings(as.integer(readline(prompt)))     # deploy parameter
  if (is.na(votes)) {
    return (0)
  } else {
    return (votes)
  }
}

# if and else can be combined.
# ifelse(is.na(votes), 0, votes)

#Suppress Warnings: since the corner cases are being handled, the warnings can be suppressed. 

Mario <- get_votes("Mario: ")     # define parameter 
Peach <- get_votes("Peach: ")
Bowser <- get_votes("Bowser: ")

Total <- sum(Mario , Peach , Bowser)
print(paste("Total Votes:", Total))


# SCOPE: 
# certain functions have a global scope while the one's defined within the 
# function body have a local scope. 



# REPEAT LOOP

i <- 3
repeat {
  cat("quack!\n")
  i <- i - 1
  if (i == 0) {
    break
  } else {
    next
  }
}


# WHILE LOOP 

q <- 3

while (q != 0){
  cat("Quack\n")
  q <- q - 1 
}


# FOR LOOP (iterating over vector)

for(e in 1:10) {
  cat("Quack\n")
}


