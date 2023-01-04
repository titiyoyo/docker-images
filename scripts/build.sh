#!/bin/bash

IMG_PATH=$1

source .env
source "$(pwd)/$IMG_PATH/.buildinfo"
IMG_URL="titiyoyo/$I:$T"

echo ">> building image $IMG_URL in $IMG_PATH"
cd "$IMG_PATH"
docker build \
  --build-arg PHP_IMAGE_VERSION="$PHP_IMAGE_VERSION" \
  . -t "$IMG_URL"