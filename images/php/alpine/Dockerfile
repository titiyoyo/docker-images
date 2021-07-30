FROM php:fpm-alpine

COPY .profile /root/.profile

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install mysqli pdo pdo_mysql
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
    git

RUN docker-php-source extract && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

RUN set -xe \
 && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
 && apk add --no-cache bash imagemagick-dev \
 && git clone https://github.com/Imagick/imagick \
 && cd imagick \
 && git checkout master && git pull \
 && phpize && ./configure && make && make install \
 && cd .. && rm -Rf imagick \
 && docker-php-ext-enable imagick \
 && apk del .build-deps \
 && rm -rf /tmp/* /var/cache/apk/*

RUN docker-php-source delete

ADD upload_size.ini /usr/local/etc/php/conf.d
ADD php.ini-development /usr/local/etc/php/php.ini
ADD docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
ADD zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

WORKDIR /var/www
