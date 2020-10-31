#' Double conditional
#'
#' @param cr2 character vector of format to be evaluate
#'
#' @return logical the opposite value of primary result for the given format
#'
#' @examples
#' \dontrun{
#' cr_double(cr2)
#' }
cr_double <- function(cr2) {
  if(cr_format() %in% cr2){
    !params[[cr_format()]]
  } else {
    params[[cr_format()]]
  }
}
