cr_double <- function(cr2) {
  if(cr_format() %in% cr2){
    !params[[cr_format()]]
  } else {
    params[[cr_format()]]
  }
}
