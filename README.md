
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unlocodeR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/unlocodeR)](https://CRAN.R-project.org/package=unlocodeR)
<!-- badges: end -->

The goal of unlocodeR is to provide access for the UN Code for Trade and
Transport Locations for geospatial standardization as well as associated
tables for translating codes. This is an excellent classification that
gets at lower level geographic entities that states or provinces - such
as cities, railroad stations, airports, and more. See
<http://www.unece.org/cefact/codesfortrade/codes_index.html/> for much
more detail about the standard, as well as the docs here.

## Installation

<!--
You can install the released version of unlocodeR from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("unlocodeR")
```
-->

``` r
remotes::install_github("jebyrnes/unlocodeR")
```

## Example

``` r
library(unlocodeR)

head(unlocode)
#>   un_locode               name            name_en iso_3166_2_country
#> 1    AD ALV   Andorra la Vella   Andorra la Vella                 AD
#> 2    AD CAN            Canillo            Canillo                 AD
#> 3    AD ENC             Encamp             Encamp                 AD
#> 4    AD ESC Escaldes-Engordany Escaldes-Engordany                 AD
#> 5    AD EAC           Esc\xe0s              Escas                 AD
#> 6    AD FMO  La Farga de Moles  La Farga de Moles                 AD
#>   subdivision iata_code function_code status_code date latitude longitude
#> 1        <NA>      <NA>      --34-6--          AI 0601  42 30 N  001 31 E
#> 2        <NA>      <NA>      --3-----          RL 0307  42 34 N  001 35 E
#> 3        <NA>      <NA>      --3-----          RL 0307  42 32 N  001 34 E
#> 4        <NA>      <NA>      --3-----          RL 0307  42 31 N  001 33 E
#> 5          04      <NA>      --3-----          RL 1407  42 33 N  001 31 E
#> 6        <NA>      <NA>      --3----B          RQ 0307     <NA>      <NA>
```
