#' Current knitting format
#'
#' \lifecycle{experimental}
#'
#' @return character Return de current knitting format. \code{html} if interactive.
cr_format <- function(){
  if(is.null(knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]])){
    'html'
  } else {
    knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]]
  }
}
