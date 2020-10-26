#' Conditionally rendering text
#'
#' @param text character text to be include conditionally
#' @param only see \code{\link{cr_val}}
#' @param cr_dbl see \code{\link{cr_val}}
#'
#' @return markdwon text
#'
#' @export
#'
#' @examples
#' \dontrun{
#' `r cr_text('Text to be evaluate.')`
#' }
cr_text <- function(text, only = NULL, cr_dbl = NULL){
  if(cr_val(only = only, cr_dbl = cr_dbl)){
    paste0(text)
  }
}
