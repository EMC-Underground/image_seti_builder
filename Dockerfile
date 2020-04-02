FROM alpinelinux/docker-cli

MAINTAINER Brad Soper <bradley.soper@dell.com>

RUN apk --no-cache add git \
            python3 \
            curl \
            bash \
            jq && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip \
            setuptools \
            wheel \
            jinja2
