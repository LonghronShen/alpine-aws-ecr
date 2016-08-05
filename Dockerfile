FROM alpine:3.4
MAINTAINER xun "me@xun.my"

RUN apk --update add \
    python \
    py-pip \
    jq \
		coreutils \
		groff \
    curl \
    bash \
    && pip install awscli \
    && curl -L "https://storage.googleapis.com/kubernetes-release/release/v1.3.4/bin/linux/amd64/kubectl" -o "/usr/local/bin/kubectl" \
    && chmod +x "/usr/local/bin/kubectl" \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*


# docker build -t axnux/alpine-aws-ecr:latest . #
