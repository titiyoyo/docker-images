FROM node:24-bookworm-slim

ENV PATH="/opt/whisper-env/bin:$PATH"

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    ffmpeg \
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

RUN python3 -m venv /opt/whisper-env \
    && /opt/whisper-env/bin/pip install --upgrade pip \
    && /opt/whisper-env/bin/pip install git+https://github.com/openai/whisper.git

COPY .profile /root/.profile

