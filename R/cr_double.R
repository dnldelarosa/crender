cr_double <- function(cr_dbl) {
  if(cr_format() %in% cr_dbl){
    !params[[cr_format()]]
  } else {
    params[[cr_format()]]
  }
}
