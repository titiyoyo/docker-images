FROM node:lts-alpine

COPY .profile /root/.profile

RUN apk add --update  \
    bash \
    zip  \
    unzip \
    docker \
    openrc

RUN rc-update add docker boot

RUN ln -sf python3 /usr/bin/python

RUN npm install -g @nestjs/cli
