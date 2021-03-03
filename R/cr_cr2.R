#' Double conditional
#'
#' \lifecycle{experimental}
#'
#' @param cr2 character vector of format to be evaluate
#'
#' @return logical the opposite value of primary result for the given format
#'
#' @examples
#' \dontrun{
#' cr_cr2(cr2)
#' }
cr_cr2 <- function(cr2) {
  if(cr_format(params) %in% cr2){
    !params[[cr_format(params)]]
  } else {
    params[[cr_format(params)]]
  }
}
