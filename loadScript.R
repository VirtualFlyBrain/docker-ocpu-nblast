#!/usr/bin/env Rscript

.libPaths()
.libPaths( c( "/usr/local/lib/R/site-library") )
.libPaths( c( .libPaths(), "/usr/lib/R/library") )
.libPaths( c( .libPaths(), "/usr/lib/R/site-library") )
.libPaths( c( .libPaths(), "/usr/local/lib/opencpu/site-library") )
.libPaths( c( .libPaths(), "/usr/lib/opencpu/library") )
.libPaths( c( .libPaths(), "/usr/lib/opencpu/site-library") )
.libPaths()
options(rgl.useNULL=TRUE)
if (!require("elmr")) devtools::source_gist("fdd1e5b6e009ff49e66be466a104fd92", filename = "install_flyconnectome_all.R")
