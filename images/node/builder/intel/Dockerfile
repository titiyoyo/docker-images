FROM node:lts-alpine

COPY .profile /root/.profile

RUN apk add --update  \
    bash \
    zip  \
    unzip

RUN ln -sf python3 /usr/bin/python

RUN npm install -g @nestjs/cli
