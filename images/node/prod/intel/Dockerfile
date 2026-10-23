FROM node:lts-alpine
LABEL comment="rebuilt for node CVE"

RUN apk add --update  \
    make \
    wget \
    curl \
    ca-certificates \
    gnupg \
    bash \
    zip  \
    unzip

COPY .profile /root/.profile
