FROM quay.io/generic/centos8:latest
LABEL org.label-schema.schema-version="Centos8 demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="centos8 Base Image-minimal" \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:centos8 " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN echo "**** install Python ****" && \
    yum -y update && \
    yum -y install python36 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    /usr/bin/python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip install pyxtermjs flask_cors

COPY . ./usr/local/lib/python3.6/site-packages/pyxtermjs/