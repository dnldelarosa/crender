#' Conditional value
#'
#' @param only character default to \code{NULL}.
#'   If specified, only in the specified formats the result will be \code{TRUE}
#' @param cr_dbl character default to \code{NULL}.
#'   If specified, the result for specified formats will be the oppositive
#'   to initial result.
#'
#' @return logical default to \code{TRUE} if format not in \code{yaml-params}.
#'   Otherwise retur a logical value based on given function params.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' cr_val()
#' cr_val(only='html')
#' cr_val(cr_dbl='latex')
#' }
cr_val <- function(only = NULL, cr_dbl = NULL){
  if(is.null(params[[cr_format()]])){
    TRUE
  } else {
    if(!is.null(only)){
      cr_only(only)
    } else if(!is.null(cr_dbl)){
      cr_double(cr_dbl)
    } else {
      params[[cr_format()]]
    }
  }
}
