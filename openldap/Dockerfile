ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="openldap" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:openldap ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:openldap " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

ENV LOG_LEVEL "stats"

RUN apk add --no-cache openldap openldap-back-mdb openldap-clients && \
    mkdir -p /run/openldap /var/lib/openldap/openldap-data && \
    rm -rf /var/cache/apk/*

EXPOSE 389

COPY users.ldif /etc/openldap/
COPY org.ldif /etc/openldap/
COPY slapd.conf /etc/openldap/
COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/
COPY shell.sh /
COPY msg /tmp/
CMD ["/shell.sh"]
WORKDIR /etc/openldap/