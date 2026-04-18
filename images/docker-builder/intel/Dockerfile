FROM docker:cli

COPY .profile /root/.profile

RUN apk add --update --no-cache \
    bash \
    curl \
    wget \
    git \
    make \
    zip \
    unzip \
    openssh-client \
    ca-certificates \
    gnupg \
    python3

# docker buildx plugin
RUN mkdir -p /usr/local/lib/docker/cli-plugins \
 && ARCH="x86_64" \
 && BUILDX_VERSION=$(wget -qO- https://api.github.com/repos/docker/buildx/releases/latest | grep '"tag_name"' | sed 's/.*"v\([^"]*\)".*/\1/') \
 && wget -qO /usr/local/lib/docker/cli-plugins/docker-buildx \
    "https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64" \
 && chmod +x /usr/local/lib/docker/cli-plugins/docker-buildx

# docker compose plugin
RUN COMPOSE_VERSION=$(wget -qO- https://api.github.com/repos/docker/compose/releases/latest | grep '"tag_name"' | sed 's/.*"v\([^"]*\)".*/\1/') \
 && wget -qO /usr/local/lib/docker/cli-plugins/docker-compose \
    "https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-linux-x86_64" \
 && chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

RUN ln -sf python3 /usr/bin/python


