# Init scripts that are used on each page

library(dplyr)
library(tidyr)
library(DT)
library(ggplot2)

generate_example_dt <- function(df) {
  
  df %>%
    datatable(rownames = FALSE, 
              options = list(
                pageLength = 10, 
                autoWidth = TRUE, 
                columnDefs = list(list(
                  className = 'dt-left', 
                  targets = 0),
                  list(className = 'dt-center', targets = 1))))
  
}

# Thanks to
# https://stackoverflow.com/a/31752708/756641
get_current_filename <- function() {
  current_filename <- knitr::current_input()
  current_filename <- tools::file_path_sans_ext(current_filename)
  return(current_filename)
}
