FROM php:cli-alpine

COPY .profile /root/.profile

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apk add --no-cache \
    rsync \
    wget \
    openssh-client \
    ca-certificates \
    curl \
    gnupg \
    make \
    bash \
    zip  \
    unzip \
    libzip-dev \
    make \
    git

WORKDIR /var/www
