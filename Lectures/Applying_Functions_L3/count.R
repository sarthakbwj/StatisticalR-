get_votes <- function(prompt = "Enter Votes: ") {    # create function and parameter
  votes <- as.integer(readline(prompt))     # deploy parameter
  if (is.na(votes)) {
    return (0)
  } else {
    return (votes)
  }
}

Mario <- get_votes("Mario: ")     # define parameter 
Peach <- get_votes("Peach: ")
Bowser <- get_votes("Bowser: ")

Total <- sum(Mario , Peach , Bowser)
print(paste("Total Votes:", Total))


# SCOPE: 
# certain functions have a global scope while the one's defined within the 
# function body have a local scope. 

