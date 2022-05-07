#!/bin/bash

IMG_PATH=$1

source "$(pwd)/$IMG_PATH/.buildinfo"
IMG_URL="titiyoyo/$I:$T"

echo ">> building image $IMG_URL in $IMG_PATH"
cd "$IMG_PATH" && docker build . -t "$IMG_URL"