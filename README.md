
<!-- README.md is generated from README.Rmd. Please edit that file -->

# crender: *C*onditional *render*ing for Rmarkdown <img src="man/figures/logo.png" align="right" width=120 height=139 alt="" />

<!-- badges: start -->

[![R build
status](https://github.com/drdsdaniel/crender/workflows/R-CMD-check/badge.svg)](https://github.com/drdsdaniel/crender/actions)
[![Travis build
status](https://travis-ci.com/drdsdaniel/crender.svg?branch=master)](https://travis-ci.com/drdsdaniel/crender)
[![Codecov test
coverage](https://codecov.io/gh/drdsdaniel/crender/branch/master/graph/badge.svg)](https://codecov.io/gh/drdsdaniel/crender?branch=master)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/crender)](https://CRAN.R-project.org/package=crender)
<!-- badges: end -->

The goal of crender is to …

## Overview

## Installation

`crender` is not yet in CRAN.
<!-- You can install the released version of crender from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("crender") -->

<!-- ``` -->

You can install the development version from GitHub with:

``` r
tryCatch(
  library(devtools),
  error = function(e){
    install.packages('devtools')
  }
)
devtools::install_github("drdsdaniel/crender")
```

## Getting Started

See

## Roadmap

`crender` is an experimental stage and can suffer many changes until
stable version. These are some of the ideas that at the moment I plan to
add to the package. Feel free to propose any change that you consider
pertinent. Look at `Contributing` below to see how.

However, it is important to note that we do not want to modify the
[knitr::knit()](https://rdrr.io/github/forks-micael/knitr/man/knit.html)
or [Rmarkdown::render()](https://rdrr.io/cran/rmarkdown/man/render.html)
functions unless the functionality in question is of great importance,
to warrant the work that this implies.

1.  Add a function to insert conditional elements in the yaml
    <!-- Desarrollar esta función: author: "r crender::cr_toggle('Daniel E. de la Rosa', 'crender core team', only = NULL, cr_dbl = NULL)" -->
2.  A function to insert tables in especific formats
    <!-- Falta la función cr_table -->
3.  A knit function to control additional output aspects
4.  Vignettes for explain package usage
    <!-- La viñeta crender explica la mayoría de las funcionalidades con multiples formatos, referencia la viñeta de multiples versiones tanto como tal, como la opción de multilingual output. Una viñeta para las versiones con el mismo formato y en una seccón de esta sugerir la posibilidad de generar documento multilingue -->
5.  Ability of generate multiple version with the same output format
    <!-- Si de verdad puedo poner múltiples rmarkdown::render dentro de la function knit, cual es el plan para rmd.polyglot, entonces tambien puedo hacer que crender cree distintas versiones de un mismo documento. Utilizando ver1...vern en lugar de lang1...langn. La idea básicamente es que pongo tantos lang(ver) en los párametros como idiomas(versiones) del mismo documento quiero. Entonces mientras pueda hacer que la funcion knit ejecute rmarkdown::render tantas veces como estos parámetros haya, intercalandolos 1 a 1, entonces puedo manipular los cr_val, incluso puedo combinar esto con los formatos de documentos, es decir que puedo tener distintas versiones en varios formatos con algunas diferencias en cada uno. En fin, los formatos tienen sentido porque puedo hacer una presentación por ejemplo al mismo tiempo, o porque puedo tener una versión html con elementos interactivos. Las versiones vendrían primero que los idiomas, ya que con las versiones puedo hacer lo de los idiomas. -->

<!-- Tener un parámetro ver_append que haga que las versiones posteriores incluyan las anteriores. Así me evito tener que estar escribiendo más y más versiones las funciones que aplican a más de una versión. -->

<!-- En los parámetros para las versiones me gustaría incluir nombres para las versiones más que verdadero o falso. -->

<!-- A la cr_knit function le pueda pasar un argumento correspondiente al nombre de salida del documento. -->

<!-- cr_switch un valor específico para cada formato(lan/ver). Esto más para el yaml, para el contenido mejor utilizar el argumento cr_only -->

6.  Ability of insert R code into cr\_content function
    <!-- usar |&mean(df$x)| para insertar código a ser evaluado. o yo puedo hacer que internamente una funcion como cr_RCode(mean(df$x)) se traduzca en |&mean(df$x)| para luego operar sobre ello.-->
7.  Ability of dinamically evaluate the chucks in conjunction with
    crender
    <!-- Crear una función cr_eval() para evaluar el código R condicionalmente, y así nisiquiera evaluo el código cuando este no va a ser insertado en documento actual. Esto es algo similar a como funciona tryCatch incluso puede ser de este tipo que todo el código vaya dentro de ella o puedo hacer que funciones con %>% o mejor aún de ambas formas. En verdad resulta igual de peligroso que el argumento eval del chuck a menos que logre hacer algun tipo de dependencia que haga que el código se evalue solo si es necesario en cualquier parte del documento. -->

<!-- Puedo utilizar esto para la evaluación dinámica. https://bookdown.org/yihui/rmarkdown-cookbook/load-cache.html -->

## Contributing

Have a feedback or want to contribute?

Please take a look at the [contributing
guidelines](https://drdsdaniel.github.io/crender/CONTRIBUTING.html)
before filing an issue or pull request.

Please note that the `crender` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

<!-- Una viñeta para explicar posibles problemas del paquete. -->

<!-- Cerrar y abrir el documento está funcionando para este error. -->

<!-- pandoc.exe: proyeccion_demanda_electricidad.utf8.md: openBinaryFile: does not exist (No such file or directory) -->

<!-- Error: pandoc document conversion failed with error 1 -->

<!-- Execution halted -->

<!-- Este es un issue abierto en Rmarkdown, y parece que modificar el yaml lo activa -->

<!-- https://github.com/rstudio/rmarkdown/issues/1268 -->

<!-- SACAR EL html_notebook DEL YAML RESUELVE EL PROBLEMA -->
