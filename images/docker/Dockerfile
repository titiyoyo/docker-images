FROM debian:latest

COPY .profile /root/.bashrc

RUN apt-get update && apt-get install -y \
    rsync \
    wget \
    openssh-client \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    systemd
