storm


# load a package and use a function from it. 

dplyr::select(
  storms, 
  !c(lat, pressure, endsWith("diameter"))
)

  