#' Conditionally rendering content
#'
#' \lifecycle{experimental}
#'
#' @param content content to be include conditionally. See \code{Details}
#' @param only see \code{\link{cr_val}}
#' @param cr2 see \code{\link{cr_val}}
#'
#' @return markdwon content
#'
#' @details
#'   Content can be anything you can insert in an common RMarkdown document,
#'    except that you can't insert \code{\`(backsticks)} and therefore chucks.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' `r cr_content('Text to be evaluate.')`
#' }
cr_content <- function(content, only = NULL, cr2 = NULL){
  if(cr_val(only = only, cr2 = cr2)){
    glue::glue(content)
  }
}
