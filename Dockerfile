FROM alpine:3.4
MAINTAINER xun "me@xun.my"

RUN apk --update add \
    python \
    py-pip \
    jq \
		coreutils \
		groff \
    curl \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

# docker build -t axnux/alpine-aws-ecr:latest . #
