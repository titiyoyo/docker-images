FROM node:24-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    build-essential \
    libffi-dev \
    libnspr4-dev \
    libnss3-dev \
    libssl-dev \
    libatk1.0-dev \
    libcups2 \
    libatk-bridge2.0-0 \
    libxcomposite1 \
    libxdamage1 \
    && rm -rf /var/lib/apt/lists/*

COPY .profile /root/.profile

