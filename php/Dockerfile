ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:php7 ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:python3 " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN apk --no-cache add php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session \
    php7-mbstring php7-gd nginx supervisor curl
    
COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/