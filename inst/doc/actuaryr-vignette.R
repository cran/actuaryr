## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- warning = FALSE---------------------------------------------------------
library(actuaryr)

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_monthly.png")

## -----------------------------------------------------------------------------
dref_fdom("2020-02-14")
dref_fwdom("2020-02-14")
dref_ldom("2020-02-14")
dref_lwdom("2020-02-14")

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_quarterly.png")

## -----------------------------------------------------------------------------
dref_fdoq("2020-05-24")
dref_fwdoq("2020-05-24")
dref_ldoq("2020-05-24")
dref_lwdoq("2020-05-24")

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_yearly.png")

## -----------------------------------------------------------------------------
dref_fdoy("2020-09-21")
dref_fwdoy("2020-09-21")
dref_ldoy("2020-09-21")
dref_lwdoy("2020-09-21")

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_mtd.png")

## ---- eval=FALSE--------------------------------------------------------------
#  dref_mtd("2020-02-14")

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_qtd.png")

## ---- eval=FALSE--------------------------------------------------------------
#  dref_qtd("2020-05-24")

## ---- echo = FALSE, out.width = "600px"---------------------------------------
knitr::include_graphics("img/dref_ytd.png")

## ---- eval=FALSE--------------------------------------------------------------
#  dref_ytd("2020-09-21")

## ---- eval=FALSE--------------------------------------------------------------
#  x <- data.frame(
#    v1 = c(1, 2, 3),
#    v2 = c(1, 2, 3),
#    v3 = c(1, 2, 3)
#    )
#  y <- data.frame(
#    v1 = c("1", "2", "3", "4"),
#    v3 = rep(4, 4),
#    stringsAsFactors = FALSE
#    )
#  compare(x, y)

