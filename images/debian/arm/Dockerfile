FROM --platform=linux/arm64/v8 debian:latest

RUN sudo apt-get update  \
    && sudo apt-get install -y \
    rsync \
    wget \
    openssh-client \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common \
    bash

RUN chsh -s /bin/bash

COPY .profile /root/.bashrc