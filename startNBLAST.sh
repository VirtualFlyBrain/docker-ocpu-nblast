#!/bin/bash

cd /
# wget http://data.virtualflybrain.org/archive/site-library.tar.gz
# wget http://data.virtualflybrain.org/archive/nblast.tar.gz
# tar -xzf site-library.tar.gz
# tar -xzf nblast.tar.gz
# rm site-library.tar.gz
# rm nblast.tar.gz

chmod -R 777 /data

Rscript /loadScript.R

chmod -R 777 /data

chmod -R 777 /usr/local/lib/R/site-library
chmod -R 777 /usr/lib/R/site-library

rm -r /usr/local/lib/R/site-library/00LOCK-*

rstudio-server start

apachectl -DFOREGROUND
