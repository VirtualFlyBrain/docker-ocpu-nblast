#!/usr/bin/env Rscript

options(flycircuit.datadir="/data")
options(rgl.useNULL=TRUE)
install.packages("jsonlite",repos="https://cloud.r-project.org/", dependencies = TRUE)
devtools::install_github("jefferis/nat", force=TRUE, dependencies=TRUE)
devtools::install_github("jefferis/vfbr", force=TRUE, dependencies=TRUE)
devtools::install_github("jefferis/flycircuit", force=TRUE, dependencies=TRUE)
devtools::install_github("jefferis/flynblastscores", force=TRUE, dependencies=TRUE)
