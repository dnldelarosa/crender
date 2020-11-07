
<!-- README.md is generated from README.Rmd. Please edit that file -->

# crender: *C*onditional *render*ing for Rmarkdown <img src="man/figures/logo.png" align="right" width=120 height=139 alt="" />

<!-- badges: start -->

[![R build
status](https://github.com/drdsdaniel/crender/workflows/R-CMD-check/badge.svg)](https://github.com/drdsdaniel/crender/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/crender)](https://CRAN.R-project.org/package=crender)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
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
# install.packages("devtools")
devtools::install_github("drdsdaniel/crender")
```

## Getting Started

## Guidelines for contributing

## License

<!-- 
Desarrollar esta función:
---
author: "r crender::cr_toggle('Daniel E. de la Rosa', 'crender core team', only = NULL, cr_dbl = NULL)`"

params:
  html: TRUE
  latex: FALSE
  docx: FALSE
---

Esto hará que el autor sea Daniel en html y crender core team en los demás formatos.
Otra vez puedo utilizar los argumentos only y cr_dbl para controlar el resultado.

Si hay más de dos opciones entonces utiliza la función cr_* que corresponda especificando los formatos necesarios en only.

Ejemplo:

r cr_header('Libraries', only = 'html')`
r cr_header('Packages', only = c('latex', 'docx'))`
r cr_header('Imports', only = 'pptx')
-->

<!-- Falta la función cr_table -->

<!-- Falta la función cr_knit -->

<!-- Exclusive output --- la viñeta que va a explicar el parámetro `only` -->

<!-- Cerrar y abrir el documento está funcionando para este error. -->

<!-- pandoc.exe: proyeccion_demanda_electricidad.utf8.md: openBinaryFile: does not exist (No such file or directory) -->

<!-- Error: pandoc document conversion failed with error 1 -->

<!-- Execution halted -->

<!-- Este es un issue abierto en Rmarkdown, y parece que modificar el yaml lo activa -->

<!-- https://github.com/rstudio/rmarkdown/issues/1268 -->

<!-- SACAR EL html_notebook DEL YAML RESUELVE EL PROBLEMA -->

<!-- Si de verdad puedo poner múltiples rmarkdown::render dentro de la function knit, cual es el plan para rmd.polyglot, entonces tambien puedo hacer que crender cree distintas versiones de un mismo documento. Utilizando ver1...vern en lugar de lang1...langn. La idea básicamente es que pongo tantos lang(ver) en los párametros como idiomas(versiones) del mismo documento quiero. Entonces mientras pueda hacer que la funcion knit ejecute rmarkdown::render tantas veces como estos parámetros haya, intercalandolos 1 a 1, entonces puedo manipular los cr_val, incluso puedo combinar esto con los formatos de documentos, es decir que puedo tener distintas versiones en varios formatos con algunas diferencias en cada uno. En fin, los formatos tienen sentido porque puedo hacer una presentación por ejemplo al mismo tiempo, o porque puedo tener una versión html con elementos interactivos. Las versiones vendrían primero que los idiomas, ya que con las versiones puedo hacer lo de los idiomas. -->

<!-- Tener un parámetro ver_append que haga que las versiones posteriores incluyan las anteriores. Así me evito tener que estar escribiendo más y más versiones las funciones que aplican a más de una versión. -->

<!-- En los parámetros para las versiones me gustaría incluir nombres para las versiones más que verdadero o falso. -->

<!-- A la cr_knit function le pueda pasar un argumento correspondiente al nombre de salida del documento. -->

<!-- cr_switch un valor específico para cada formato(lan/ver). Esto más para el yaml, para el contenido mejor utilizar el argumento cr_only -->

<!-- usar |&mean(df$x)| para insertar código a ser evaluado. o yo puedo hacer que internamente una funcion como cr_RCode(mean(df$x)) se traduzca en |&mean(df$x)| para luego operar sobre ello.-->
