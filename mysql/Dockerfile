ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="pyterm enabled mysql playground" \
    org.label-schema.docker.cmd="docker build -t 0cloud0/playground:pyxtermjs ." \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

WORKDIR /app
COPY startup.sh /startup.sh
COPY my.cnf /etc/mysql/my.cnf
ADD mysql /app/mysql
COPY index.html ./usr/lib/python3.7/site-packages/pyxtermjs/

CMD ["/startup.sh"]