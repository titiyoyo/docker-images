FROM --platform=linux/arm64/v8 node:lts-alpine

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
