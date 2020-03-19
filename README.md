
<!-- README.md is generated from README.Rmd. Please edit that file -->

# actuaryr

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/zchmielewska/actuaryr.svg?branch=master)](https://travis-ci.org/zchmielewska/actuaryr)
<!-- badges: end -->

The goal of actuary package is to support the actuarial modelling.

You can install actuaryr package with:

``` r
library(actuaryr)
```

## Date reference functions

Retrieve the date in reference to the base date.

Build a function using `dref_` + first letters of the reference day.

|                   | of month       | of quarter     | of year        |
| ----------------- | -------------- | -------------- | -------------- |
| first day         | `dref_fdom()`  | `dref_fdoq()`  | `dref_fdoy()`  |
| first working day | `dref_fwdom()` | `dref_fwdoq()` | `dref_fwdoy()` |
| last day          | `dref_ldom()`  | `dref_ldoq()`  | `dref_ldoy()`  |
| last working day  | `dref_lwdom()` | `dref_lwdoq()` | `dref_lwdoy()` |

Examples:

``` r
dref_fdom("2019-09-21")
#> [1] "2019-09-01"
dref_fwdoq("2019-09-21")
#> [1] "2019-07-01"
dref_ldoy("2019-09-21")
#> [1] "2019-12-31"
dref_lwdom("2019-09-21")
#> [1] "2019-09-30"
```

## Compare

Compare two tables with `compare()`.

``` r
x <- data.frame(
  v1 = 1:3,
  v2 = 4:6
)
y <- data.frame(
  v1 = 1:3,
  v2 = 7:9
)
compare(x, y)
```
