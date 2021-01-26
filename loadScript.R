#!/usr/bin/env Rscript
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS = TRUE)

if (!require("devtools")) install.packages("devtools")
if (!require("bit")) install.packages("bit",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library")
if (!require("bit64")) install.packages("bit64",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library")
if (!require("arrow")) { 
  install.packages("arrow",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library")
  library(arrow)
  install_arrow()
}

devtools::install_github("VirtualFlyBrain/vfbnblast")
