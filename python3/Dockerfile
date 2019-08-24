ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:python3 ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:python3 " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/