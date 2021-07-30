FROM php:fpm-alpine

COPY .profile /root/.profile

RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt update \
    && apt install -y php8.0 php8.0-zip php8.0-dom php8.0-mbstring

RUN apt install curl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
