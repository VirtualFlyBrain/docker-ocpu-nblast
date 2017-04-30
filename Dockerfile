FROM opencpu/base

RUN apt-get update && apt-get install -y wget gzip tar less

COPY startNBLAST.sh /startNBLAST.sh

RUN chmod +x /startNBLAST.sh

CMD /startNBLAST.sh
