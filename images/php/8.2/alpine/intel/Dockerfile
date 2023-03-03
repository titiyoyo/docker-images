ARG PHP_IMAGE_VERSION=8.2
ARG PHP_TAG=-fpm-alpine
ARG PHP_IMAGE=php:$PHP_IMAGE_VERSION$PHP_TAG

FROM $PHP_IMAGE

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apk add --no-cache \
      linux-headers \
      bash \
      unzip \
      libzip-dev \
      msmtp \
      zip

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
RUN apk add --no-cache symfony-cli

RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN apk add unzip
RUN apk add --no-cache --update --virtual \
    buildDeps \
    autoconf \
    pkgconfig \
    build-base \
    imagemagick-dev \
    imagemagick \
    libtool \
    make \
    git \
    icu \
    icu-dev

RUN docker-php-source extract
RUN pecl install xdebug imagick
RUN docker-php-ext-configure intl && docker-php-ext-install intl
RUN docker-php-ext-enable xdebug imagick intl
RUN docker-php-source delete

ADD upload_size.ini /usr/local/etc/php/conf.d
ADD php.ini-development /usr/local/etc/php/php.ini
ADD docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
ADD zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

COPY .profile /root/.profile
COPY .profile /root/.bashrc

WORKDIR /var/www
