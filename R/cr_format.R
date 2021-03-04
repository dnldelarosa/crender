#' Current knitting format
#'
#' \lifecycle{experimental}
#'
#' @param params [list]: taken from rmarkdown environment
#'
#' @return character Return de current knitting format. \code{html} if interactive.
#'
#' @keywords internal
#'
cr_format <- function(params = NULL){
  if(is.null(knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]])){
    return('html')
  } else {
    if(!is.null(params)){
      tryCatch({
        args <- knitr::opts_knit$get('rmarkdown.pandoc.args')
        for (arg in seq_along(args)) {
          if(args[[arg]] == "--template"){
            template <- args[[arg+1]]
          }
        }
        for (p in names(params)){
          if(p != "html"){
            if(grepl(p, template, ignore.case = TRUE)){
              return(p)
            }
          }
        }
      }, error = function(e){
        return(knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]])
      })
    }
  }
  return(knitr::opts_knit$get("rmarkdown.pandoc.to")[[1]])
}
