FROM node:lts-alpine

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
    python3

RUN ln -sf python3 /usr/bin/python
COPY .profile /root/.profile
