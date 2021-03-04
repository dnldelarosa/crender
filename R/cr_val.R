#' Conditional value
#'
#' \lifecycle{experimental}
#'
#' @param only character default to \code{NULL}.
#'   If specified, only in the specified formats the result will be \code{TRUE}
#' @param cr2 character default to \code{NULL}.
#'   If specified, the result for specified formats will be the opposite
#'   to initial result.
#'
#' @return logical default to \code{TRUE} if format not in \code{yaml-params}.
#'   Otherwise return a logical value based on given function params.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' cr_val()
#' cr_val(only='html')
#' cr_val(cr2='latex')
#' }
cr_val <- function(only = NULL, cr2 = NULL){
  if(is.null(params[[cr_format(params)]])){
    TRUE
  } else {
    if(!is.null(only)){
      cr_only(only)
    } else if(!is.null(cr2)){
      cr_cr2(cr2)
    } else {
      params[[cr_format(params)]]
    }
  }
}
