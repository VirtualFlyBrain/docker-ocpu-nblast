FROM opencpu/base

ADD http://data.virtualflybrain.org/archive/site-library.tar.gz /site-library.tar.gz

RUN apt-get update && apt-get install -y wget gzip tar less libcurl4-openssl-dev libxml2-dev libX11-dev freeglut3 freeglut3-dev r-cran-rgl libglu1-mesa-dev libgl1-mesa-dev

COPY startNBLAST.sh /startNBLAST.sh

RUN chmod +x /startNBLAST.sh

CMD /startNBLAST.sh
