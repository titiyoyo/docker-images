FROM docker/compose:latest

COPY .profile /root/.profile

RUN apk add --update --no-cache \
    rsync \
    wget \
    openssh-client \
    ca-certificates \
    curl \
    gnupg \
    make \
    bash \
    zip  \
    unzip
