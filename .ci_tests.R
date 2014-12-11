## This file will drive all the tests for the project.  It could be a
## shell file or an R file, but an R file is probably going to be
## easier to read for many of the instructors.  This also means that
## all of R's comparison tools are available.
library(methods) # defensive because Rscript is terrible.
library(knitr)
## The error setting code here means that knitr will fail if there is
## an error in the document.  This is a tricky line to walk if you
## *want* to capture errors in your document, but that is probably an
## edge case.
knitr::opts_chunk$set(error=FALSE)
knit('report.Rmd')

library(testthat)
expect_that(file.exists("report.md"), is_true())
expect_that(file.exists("figure"), is_true())
