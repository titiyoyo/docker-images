FROM --platform=linux/arm64/v8 node:24-bookworm-slim

ENV PATH="/opt/whisper-env/bin:$PATH"

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    ffmpeg \
    git \
    build-essential \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/whisper-env \
    && /opt/whisper-env/bin/pip install --upgrade pip \
    && /opt/whisper-env/bin/pip install git+https://github.com/openai/whisper.git

COPY .profile /root/.profile

