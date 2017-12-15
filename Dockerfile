FROM opencpu/base

COPY limits.conf /etc/security/limits.conf

# Configure environment
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    LC_COLLATE=en_US.UTF-8 \
    LC_CTYPE=en_US.UTF-8 \
    LC_MESSAGES=en_US.UTF-8 \
    LC_MONETARY=en_US.UTF-8 \
    LC_NUMERIC=en_US.UTF-8 \
    LC_TIME=en_US.UTF-8

# Install.
RUN \
  echo 'LC_ALL=en_US.UTF-8' >>  /etc/default/locale && \
  echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen en_US.UTF-8 && \
  dpkg-reconfigure locales

ENV RGL_USE_NULL=TRUE

VOLUME /data 

VOLUME /usr/local/lib/R/site-library

RUN chmod -R 777 /data && chmod -R 777 /usr/local/lib/R/site-library

RUN dpkg --add-architecture i386 && \
add-apt-repository ppa:marutter/rrutter -y && \
add-apt-repository ppa:marutter/c2d4u -y && \
apt-get update && \
apt-get install -y r-cran-rcpp r-cran-igraph r-cran-brew r-cran-git2r r-cran-memoise r-cran-jsonlite r-cran-devtools r-cran-ggplot2 r-cran-rgl

RUN dpkg --add-architecture i386 && apt-get -dd update && apt-get install -y software-properties-common wget git gzip tar less curl libcurl4-openssl-dev libxml2-dev libx11-dev freeglut3 freeglut3-dev libglu1-mesa-dev libgl1-mesa-dev xvfb libcairo2-dev libmagick++-dev libpoppler-cpp-dev libwebp-dev libssh2-1-dev libreadline-dev cmtk libblas-dev liblapack-dev

COPY startNBLAST.sh /startNBLAST.sh

COPY loadScript.R /loadScript.R

RUN chmod +x /startNBLAST.sh

COPY server.conf /etc/opencpu/server.conf

COPY server.conf /usr/lib/opencpu/library/opencpu/config/defaults.conf

COPY Rprofile /etc/opencpu/Rprofile

CMD /startNBLAST.sh
