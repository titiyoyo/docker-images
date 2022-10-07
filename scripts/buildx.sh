#!/bin/bash

IMG=$1
FULL_PATH="$(pwd)/$IMG"
ARCH=$2

source "$FULL_PATH/.buildinfo"
IMG_URL="titiyoyo/$I:$T"

echo ">> building image $IMG_URL in $IMG"
docker buildx build \
  --platform "$ARCH" \
  --output "type=image,push=true" \
  --tag "$IMG_URL" \
  "$FULL_PATH"
