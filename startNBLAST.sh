#!/bin/bash

cd /
# wget http://data.virtualflybrain.org/archive/site-library.tar.gz
# wget http://data.virtualflybrain.org/archive/nblast.tar.gz
# tar -xzf site-library.tar.gz
# tar -xzf nblast.tar.gz
# rm site-library.tar.gz
# rm nblast.tar.gz

service opencpu restart

less +F /var/log/opencpu/apache_access.log
