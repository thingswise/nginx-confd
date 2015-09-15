FROM nginx

MAINTAINER Alexander Lukichev

ADD https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 /bin/confd
RUN chmod +x /bin/confd

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80
EXPOSE 443

VOLUME /etc/confd/conf.d
VOLUME /etc/confd/templates

CMD ["/start.sh"]


