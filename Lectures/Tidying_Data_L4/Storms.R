storms
# CRAN : Comprehensive R Archive Network 
# load a package and use a function from it. 

# chr = character
# dbl = double (similar to floating value in python)
# fct = factors (categories which can be grouped)


dplyr::select(
  storms, 
  !c(lat, pressure, ends_with("diameter"))
)

  
dplyr::filter(
  dplyr::select(
    storms,
    !c(lat, pressure, ends_with("diameter"))
  ),
  status == "hurricane"
)


# PIPE OPERATOR (|>)
# allows the first argument(name of Data S   et) to be written outside and continued 
# by the other arguments. Its similar to nesting in python. The output of one is the
# input for another. 

hurricanes <- storms |>    # from the DS storms...
  select(!c(lat, long, pressure, ends_with("diameter"))) |>   # ignore columns lat, long.....
  filter(status == "hurricane") |>   # show rows only with 'hurricane' as status.
  arrange(desc(wind), name) |>  # show max wind speed at the top and names in ascending. 
  distinct(name, year, .keep_all = TRUE)  # unique names with year while keeps others rows similar to main DS.

hurricanes

hurricanes |>
  select(c(year, name, wind)) |>
  write.csv("hurricanes.csv", row.names = FALSE) 

# strongest hurricane in each given year.



