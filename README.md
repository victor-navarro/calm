# calmr

Canonical Associative Learning Models in R

## Installation

You will need devtools to install this package from github. If you do not have it, run:

`install.packages("devtools")`

Afterwards, you can install directly from this repository via:

`devtools::install_github("victor-navarro/calmr", build_vignettes = TRUE)`

If you managed to build the vignettes, there's a vignette showing the basics of the package in

`vignette("calmr_basics", package = "calmr")`

If you just want to do some quick simulating, launch the visual interface via:

```
library(calmr)
calmr_app()
```

## Try the online Shiny app

If you want to check the app without committing to an install, you can check it out here (be wary: the server might have run out of the free monthly quota).

[https://victor-navarro.shinyapps.io/calmr_app/](https://victor-navarro.shinyapps.io/calmr_app/)

