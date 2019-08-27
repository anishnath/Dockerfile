ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:nodejs ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:nodejs " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

RUN apk add --update nodejs nodejs-npm && mkdir -p /app && \
    cd /app && \
    npm install lodash \
      chalk \
      request \
      react \
      express \
      commander \
      moment \
      debug \
      prop-types \
      react-dom \
      async \
      fs-extra \
      bluebird \
      tslib \
      axios \
      uuid \
      underscore \
      vue \
      classnames \
      mkdirp \
      body-parser \
      jquery \
      babel-core \
      redux
    
COPY . ./usr/lib/python3.7/site-packages/pyxtermjs/

WORKDIR /app