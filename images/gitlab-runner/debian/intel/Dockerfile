FROM titiyoyo/debian:latest

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
RUN apt install -y software-properties-common curl \
    && curl -sSL https://packages.sury.org/php/README.txt | bash -x \
    && apt update \
    && apt install -y php8.1 php8.1-zip php8.1-dom php8.1-mbstring php8.1-intl php8.1-imagick php8.1-xdebug \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb" \
    && dpkg -i gitlab-runner_amd64.deb