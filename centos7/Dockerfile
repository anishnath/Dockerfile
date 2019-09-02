FROM scratch
ADD centos-7-x86_64-docker.tar.xz /

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="centos7 Base Image-minimal" \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:centos7 " \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190801"

RUN echo "**** install Python ****" && \
    yum -y localinstall --nogpgcheck http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm && \
    yum -y install python36 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    /usr/bin/python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip install pyxtermjs flask_cors

COPY . ./usr/local/lib/python3.6/site-packages/pyxtermjs/