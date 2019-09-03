FROM archlinux/base


LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="Arch Linux Base Image-minimal" \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:archlinux " \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190801"

RUN echo "**** install Python ****" && \
    pacman --noconfirm -Sy python python-pip   && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    /usr/bin/python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    pip3 install pyxtermjs flask_cors

COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/