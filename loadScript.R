#!/usr/bin/env Rscript

pkgTest <- function(x)
  {
    if (!require(x,character.only = TRUE))
    {
      install.packages(x,repos="https://cloud.r-project.org/", dependencies = TRUE)
        if(!require(x,character.only = TRUE)) stop("Package not found")
    }
  }

options(flycircuit.datadir="/data")
options(rgl.useNULL=TRUE)
pkgTest("brew")
pkgTest("git2r")
pkgTest("memoise")
pkgTest("jsonlite")
pkgTest("devtools")
pkgTest("ggplot2")
pkgTest("rgl")
devtools::install_github("jefferis/nat", dependencies=TRUE)
devtools::install_github("jefferis/flycircuit", dependencies=TRUE)
devtools::install_github("jefferis/flynblastscores", dependencies=TRUE)
devtools::install_github("jefferis/vfbr", dependencies=TRUE)

