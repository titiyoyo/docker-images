#!/bin/bash

IMG_PATH=$1

source "$(pwd)/$IMG_PATH/.buildinfo"
IMG_URL="titiyoyo/$I:$T"

echo ">> pushing image $IMG_URL in $IMG_PATH"
docker push "$IMG_URL"
