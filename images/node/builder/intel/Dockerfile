FROM node:lts-alpine

LABEL comment="rebuilt for node CVE"

COPY .profile /root/.profile

RUN apk add --update  \
    bash \
    zip  \
    unzip

RUN ln -sf python3 /usr/bin/python

RUN npm install -g @nestjs/cli
