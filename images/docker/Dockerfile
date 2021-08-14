FROM docker/compose:latest

COPY .profile /root/.profile

RUN apk add --update \
    rsync \
    wget \
    openssh-client \
    ca-certificates \
    curl \
    gnupg \
    make
