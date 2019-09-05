FROM opensuse/leap


LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="opensuse/leap" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="opensuse/leap Base Image-minimal" \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:opensuseleap " \
    org.label-schema.vendor="opensuse" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190801"

RUN echo "**** install Python ****" && \
    zypper install -y python3 python3-pip   && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    pip3 install pyxtermjs flask_cors

COPY . ./usr/lib/python3.6/site-packages/pyxtermjs/