#!/bin/bash

ARCH=$1
DIRS=$(find . -name .buildinfo | xargs dirname)

for dir in $DIRS; do
  if [[ "$dir" == *"$ARCH"* ]]; then
    source "$dir/$IMG_PATH/.buildinfo"
    echo ">> pulling $I:$T"
    docker pull "titiyoyo/$I:$T"
  fi
done
