ARG BASE_IMAGE=golang:1.12-alpine
FROM ${BASE_IMAGE}
LABEL org.label-schema.schema-version="Go System" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:go ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:go " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN echo "**** install Python ****" && \
    apk add --no-cache python3 bash && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip install pyxtermjs flask_cors

COPY . /usr/lib/python3.7/site-packages/pyxtermjs