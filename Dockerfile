FROM opencpu/base

ADD http://data.virtualflybrain.org/archive/site-library.tar.gz /site-library.tar.gz

RUN cd / ** \
tar -xzf site-library.tar.gz && \
rm site-library.tar.gz

RUN apt-get update && apt-get install tail

RUN echo 'log start' > /var/log/opencpu/apache_access.log
