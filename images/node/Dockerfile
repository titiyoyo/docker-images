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
    unzip

COPY .profile /root/.profile