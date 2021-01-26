## Rprofile for OpenCPU cloud server.


Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS = TRUE)
if (!require("devtools")) install.packages("devtools", INSTALL_opts = '--no-lock')
if (!require("bit")) install.packages("bit",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library", INSTALL_opts = '--no-lock')
if (!require("bit64")) install.packages("bit64",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library", INSTALL_opts = '--no-lock')
if (!require("arrow")) { 
  install.packages("arrow",repos="http://cran.rstudio.com/", dependencies = FALSE, lib="/usr/local/lib/R/site-library", INSTALL_opts = '--no-lock')
  library(arrow)
  install_arrow()
}

if (!require("vfbnblast")) { devtools::install_github("VirtualFlyBrain/vfbnblast", INSTALL_opts = '--no-lock')
