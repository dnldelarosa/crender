#' Conditional headers
#'
#' @param htext character header text
#' @param hlevel numeric default to 1. TODO reference to markdown headers docs
#' @param only see \code{\link{cr_val}}
#' @param cr_dbl see \code{\link{cr_val}}
#'
#' @return markdown header conditionally
#'
#' @export
#'
#' @examples
#' \dontrun{
#' `r cr_header('Libraries')`
#' }
cr_header <- function(htext, hlevel = 1, only = NULL, cr_dbl = NULL){
  if(cr_val(only = only, cr_dbl = cr_dbl)){
    paste0(rep('#', hlevel), ' ', htext)
  }
}
