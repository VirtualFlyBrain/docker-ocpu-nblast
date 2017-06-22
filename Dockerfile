FROM opencpu/base

VOLUME /data 

VOLUME /usr/local/lib/R/site-library

RUN chmod -R 777 /data && chmod -R 777 /usr/local/lib/R/site-library

RUN dpkg --add-architecture i386 && apt-get -dd update && apt-get install -y wget git gzip tar less curl libcurl4-openssl-dev libxml2-dev libx11-dev freeglut3 freeglut3-dev r-cran-rgl libglu1-mesa-dev libgl1-mesa-dev xvfb libcairo2-dev libmagick++-dev libpoppler-cpp-dev libwebp-dev libssh2-1-dev

COPY startNBLAST.sh /startNBLAST.sh

COPY loadScript.R /loadScript.R

RUN chmod +x /startNBLAST.sh

COPY server.conf /etc/opencpu/server.conf

COPY Rprofile /etc/opencpu/Rprofile

CMD /startNBLAST.sh
