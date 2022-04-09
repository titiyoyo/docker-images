FROM debian:latest

RUN apt-get update && apt-get install -y \
    rsync \
    wget \
    openssh-client \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

COPY .profile /root/.bashrc