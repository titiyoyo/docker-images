#!/bin/bash

IMG_PATH=$1
FULL_PATH="$(pwd)/$IMG_PATH"
ARCH=$2

source "$FULL_PATH/.buildinfo"
IMG_URL="titiyoyo/$I:$T"

echo ">> building image $IMG_URL in $IMG_PATH"
docker buildx build \
  --platform "$ARCH" \
  --output "type=image,push=true" \
  --tag "$IMG_URL" \
  "$FULL_PATH"
