#!/bin/bash

cd /

mkdir -p /home/${RSTUDIO_USER}

chmod -R 777 /data

chmod -R 777 /home/${RSTUDIO_USER}

rm -r /usr/local/lib/R/site-library/00LOCK-*

ln -s /data /root/.local
ln -s /data /home/opencpu/.local
ln -s /data /home/${RSTUDIO_USER}/.local

if [ "${FASTBOOT}" == "false" ]; then
  Rscript /loadScript.R
else
  Rscript /bootScript.R
fi

chmod -R 777 /data

chmod -R 777 /usr/local/lib/R/site-library
chmod -R 777 /usr/lib/R/site-library

rm -r /usr/local/lib/R/site-library/00LOCK-*

if [ "$ENABLED" == "rstudio" ]; then 
  adduser ${RSTUDIO_USER} --gecos "rstudio,,," --disabled-password
  echo "${RSTUDIO_USER}:${RSTUDIO_PASS}" | chpasswd
  rstudio-server start
fi

rm -r /usr/local/lib/R/site-library/00LOCK-*

apachectl -DFOREGROUND

