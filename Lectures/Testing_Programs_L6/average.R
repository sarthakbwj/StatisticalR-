average <- function(x) {
  if(!is.numeric(x)) {
    warning("'x' must be a numberic vector. Returning NA instead.")
    return(NA)
  }
  sum(x)/length(x)
}
