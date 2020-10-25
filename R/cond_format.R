#' Knitting format
#'
#' @return character Return de current knitting format. \code{html} if interactive.
#'
#' @export
cond_format <- function(){
  if(is.null(knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]])){
    'html'
  } else {
    knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]]
  }
}
