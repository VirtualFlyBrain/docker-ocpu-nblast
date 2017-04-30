#!/bin/bash

cd /
curl -O http://data.virtualflybrain.org/archive/site-library.tar.gz
tar -xzf site-library.tar.gz
rm site-library.tar.gz

service opencpu restart

less +F /var/log/opencpu/apache_access.log
