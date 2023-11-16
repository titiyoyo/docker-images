ARG PHP_IMAGE_VERSION=8.2
ARG PHP_TAG=-cli-alpine
ARG PHP_IMAGE=php:$PHP_IMAGE_VERSION$PHP_TAG

FROM $PHP_IMAGE

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

COPY .profile /root/.profile

WORKDIR /var/www
