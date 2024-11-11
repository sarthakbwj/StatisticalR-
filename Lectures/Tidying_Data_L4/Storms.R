storm

# load a package and use a function from it. 

dplyr::select(
  storms, 
  !c(lat, pressure, tropicalstorm_force_diameter, hurricane_force_diameter)
)

