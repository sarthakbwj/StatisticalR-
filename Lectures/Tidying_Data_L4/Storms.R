storms
# CRAN : Comprehensive R Archive Network 
# load a package and use a function from it. 

dplyr::select(
  storms, 
  !c(lat, pressure, endsWith("diameter"))
)

  
dplyr::filter(
  dplyr::select(
    storms,
    !c(lat, pressure, endsWith("diameter"))
  ),
  status == "hurricane"
)



