FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt update \
    && apt install -y php8.1 php8.1-zip php8.1-dom php8.1-mbstring php8.1-intl php8.1-imagick php8.1-xdebug

RUN apt install curl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY .profile /root/.profile

WORKDIR /var/www
