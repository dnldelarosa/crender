#' Conditional headers
#'
#' \lifecycle{soft-deprecated}
#'
#' @param htext character header text
#' @param hlevel numeric default to 1. TODO reference to markdown headers docs
#' @param only see \code{\link{cr_val}}
#' @param cr2 see \code{\link{cr_val}}
#'
#' @return markdown header conditionally
#'
#' @export
#'
#' @examples
#' \dontrun{
#' `r cr_header('Libraries')`
#' }
cr_header <- function(htext, hlevel = 1, only = NULL, cr2 = NULL){
  .Deprecated('cr_content')
  if(cr_val(only = only, cr2 = cr2)){
    paste0(paste0(rep('#', hlevel), collapse = ''), ' ', htext)
  }
}
