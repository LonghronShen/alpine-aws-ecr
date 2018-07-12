FROM docker:stable-dind
MAINTAINER xun "me@xun.my"

RUN apk --update add \
    python \
    py-pip \
    git \
    jq \
    zip \
    perl \
    coreutils \
    groff \
    openssh-client \
    curl \
    gcc \
    libc-dev \
    bash \
    && pip install --upgrade awscli python-swiftclient python-keystoneclient setuptools distribute \
    && curl -L "https://storage.googleapis.com/kubernetes-release/release/v1.3.4/bin/linux/amd64/kubectl" -o "/usr/local/bin/kubectl" \
    && chmod +x "/usr/local/bin/kubectl" \
    && rm -rf /var/cache/apk/*


# docker build -t axnux/alpine-aws-ecr:latest . #
