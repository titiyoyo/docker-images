FROM node:lts-alpine

LABEL comment="rebuilt for node CVE"

RUN apk add --update  \
    make \
    wget \
    curl \
    rsync \
    openssh-client \
    ca-certificates \
    gnupg \
    bash \
    zip  \
    unzip \
    jq \
    python3-dev \
    gcc \
    g++ \
    libc-dev

RUN ln -sf python3 /usr/bin/python
COPY .profile /root/.profile
