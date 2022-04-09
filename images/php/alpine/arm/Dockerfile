FROM php:fpm-bullseye

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get update
RUN apt-get install -y \
      unzip \
      libzip-dev \
      msmtp \
      zip

RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN apt-get install -y unzip
RUN apt-get install -y \
    gcc \
    build-essential \
    autoconf \
    imagemagick \
    libmagickwand-dev \
    libtool \
    make \
    git

RUN docker-php-source extract && \
    pecl install xdebug imagick && \
    docker-php-ext-enable xdebug imagick

RUN docker-php-source delete

ADD upload_size.ini /usr/local/etc/php/conf.d
ADD php.ini-development /usr/local/etc/php/php.ini
ADD docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
ADD zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

COPY .profile /root/.profile
COPY .profile /root/.bashrc

WORKDIR /var/www
