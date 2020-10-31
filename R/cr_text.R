#' Conditionally rendering text
#'
#' \lifecycle{soft-deprecated}
#'
#' @param text character text to be include conditionally
#' @param only see \code{\link{cr_val}}
#' @param cr2 see \code{\link{cr_val}}
#'
#' @return markdwon text
#'
#' @export
#'
#' @examples
#' \dontrun{
#' `r cr_text('Text to be evaluate.')`
#' }
cr_text <- function(text, only = NULL, cr2 = NULL){
  .Deprecated('cr_content')
  if(cr_val(only = only, cr2 = cr2)){
    paste0(text)
  }
}
