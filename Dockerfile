FROM opencpu/base

ADD http://data.virtualflybrain.org/archive/site-library.tar.gz /site-library.tar.gz

RUN apt-get update && apt-get install -y wget gzip tar less

COPY startNBLAST.sh /startNBLAST.sh

RUN chmod +x /startNBLAST.sh

CMD /startNBLAST.sh
