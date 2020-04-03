FROM alpinelinux/docker-cli

MAINTAINER Brad Soper <bradley.soper@dell.com>

RUN apk --no-cache add git \
            python3 \
            curl \
            bash \
            vault \
            jq && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip \
            setuptools \
            wheel \
            yq \
            jinja2 && \
    curl https://github.com/concourse/concourse/releases/download/v5.8.0/fly-5\
    .8.0-linux-amd64.tgz -o fly.tgz && \
    tar -xvzf fly.tgz && \
    rm fly.tgz && \
    chmod +x fly && \
    mv fly /usr/local/bin
