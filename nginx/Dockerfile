ARG BASE_IMAGE=nginx
FROM ${BASE_IMAGE}
LABEL org.label-schema.schema-version="nginx tlsv1.3 Docker Image" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:nginx ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:nginx " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

COPY nginx.conf /etc/nginx/
RUN mkdir /etc/nginx/ssl/
COPY localhost.crt /etc/nginx/ssl/
COPY dhparam.pem /etc/nginx/
COPY localhost.key /etc/nginx/ssl/
COPY index.html /usr/share/nginx/html