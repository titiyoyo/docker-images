FROM --platform=linux/arm64/v8 titiyoyo/debian:arm

ENV DEBIAN_FRONTEND noninteractive
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION v18.12.1
ENV NODE_PATH $NVM_DIR/versions/node/$NODE_VERSION/bin
ENV PATH $NODE_PATH:$PATH

RUN apt-get update

# Docker
RUN mkdir -p /etc/apt/keyrings  \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
    && echo \
         "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
         $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update  \
    && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin \
    && usermod -aG docker $(whoami) \
    && newgrp docker \
    && systemctl enable docker.service \
    && systemctl enable containerd.service


# NODE
RUN mkdir -p /usr/local/nvm \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash \
    && /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use --delete-prefix $NODE_VERSION" \
    && node --version


# PHP
RUN curl -sSL https://packages.sury.org/php/README.txt | bash -x \
    && apt update \
    && apt install -y \
      php8.2 \
      php8.2-zip \
      php8.2-dom \
      php8.2-mbstring \
      php8.2-intl \
      php8.2-imagick \
      php8.2-xdebug \
      php8.2-curl \
      php8.2-mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \