FROM debian
LABEL org.label-schema.schema-version="debian10" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:debian ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:debian " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN echo "**** install Python ****" && \
    apt-get -y update && \
    apt-get -y install python3 python3-pip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip install pyxtermjs flask_cors

COPY . ./usr/local/lib/python3.7/dist-packages/pyxtermjs/