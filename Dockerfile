FROM opencpu/base

COPY startNBLAST.sh /startNBLAST.sh

RUN chmod +x /startNBLAST.sh

CMD /startNBLAST.sh
