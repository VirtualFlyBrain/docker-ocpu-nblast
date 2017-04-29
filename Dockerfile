FROM opencpu/base

ADD http://data.virtualflybrain.org/archive/site-library.tar.gz site-library.tar.gz

RUN cd / ** \
tar -xzf site-library.tar.gz
