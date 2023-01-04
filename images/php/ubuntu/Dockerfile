FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt update \
    && apt install -y php8.2 php8.2-zip php8.2-dom php8.2-mbstring php8.2-intl php8.2-imagick php8.2-xdebug

RUN apt install curl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY .profile /root/.profile

WORKDIR /var/www
