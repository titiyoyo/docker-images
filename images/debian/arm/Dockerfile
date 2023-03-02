FROM --platform=linux/arm64/v8 debian:latest

RUN apt-get update  \
    && apt-get install -y \
    rsync \
    wget \
    openssh-client \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common \
    bash \
    sudo

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt-get install -y symfony-cli

RUN chsh -s /bin/bash

COPY .profile /root/.bashrc