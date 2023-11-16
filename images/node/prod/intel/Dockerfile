FROM node:lts-alpine

RUN apk add --update  \
    make \
    wget \
    curl \
    ca-certificates \
    gnupg \
    bash \
    zip  \
    unzip \
    jq

COPY .profile /root/.profile