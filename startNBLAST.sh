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

rm -r /usr/lib/R/site-library/*

rm -r /usr/lib/opencpu/library/brew
rm -r /usr/lib/opencpu/library/git2r
rm -r /usr/lib/opencpu/library/devtools
rm -r /usr/lib/opencpu/library/jsonlite
rm -r /usr/lib/opencpu/library/Rcpp
rm -r /usr/lib/opencpu/library/memoise

ln -s /usr/local/lib/R/site-library/brew /usr/lib/opencpu/library/brew
ln -s /usr/local/lib/R/site-library/git2r /usr/lib/opencpu/library/git2r
ln -s /usr/local/lib/R/site-library/devtools /usr/lib/opencpu/library/devtools
ln -s /usr/local/lib/R/site-library/jsonlite /usr/lib/opencpu/library/jsonlite
ln -s /usr/local/lib/R/site-library/Rcpp /usr/lib/opencpu/library/Rcpp
ln -s /usr/local/lib/R/site-library/memoise /usr/lib/opencpu/library/memoise

rm -r /usr/local/lib/R/site-library/00LOCK-*

service opencpu restart

sleep 1m

curl -l http://localhost/ocpu/library/flycircuit/R/

less +F /var/log/opencpu/apache_access.log
