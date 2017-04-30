FROM opencpu/base

ADD http://data.virtualflybrain.org/archive/site-library.tar.gz /site-library.tar.gz

RUN cd / ** \
tar -xzf site-library.tar.gz && \
rm site-library.tar.gz

RUN sed -i 's|#ServerName www.example.com|ServerName r.virtualflybrain.org|' /etc/apache2/sites-enabled/000-default.conf

CMD service opencpu restart && less +F /var/log/opencpu/apache_access.log
