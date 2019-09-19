ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="Lua System" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:lua ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:lua " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN apk add --no-cache luarocks lua5.2 lua5.2-dev && \
     if [ ! -e /usr/bin/lua ]; then ln -s /usr/bin/lua5.2 /usr/bin/lua ; fi
COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/
WORKDIR /lua