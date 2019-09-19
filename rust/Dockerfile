ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="RUST 1.34.2" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:rust ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:rust " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN apk add --no-cache rust cargo
COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/
WORKDIR /rust