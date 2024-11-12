storms
# CRAN : Comprehensive R Archive Network 
# load a package and use a function from it. 

# chr = character
# dbl = double (similar to floating value in python)
# fct = factors (categories which can be grouped)


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


# PIPE OPERATOR (|>)
# allows the first argument(name of Data Set) to be written outside and continued 
# by the other arguments. Its similar to nesting in python. The output of one is the
# input for another. 

storms |> 
  select(!c(lat, long, pressure, ends_with("diameter"))) |>
  filter(status == "hurricane")
  




