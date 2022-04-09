#!/bin/bash

ARCH=$1
DIRS=$(find . -name .buildinfo | xargs dirname )

for dir in $DIRS; do
  if [[ "$dir" == *"$ARCH"* ]]; then
    IMG_PATH=$(echo $dir | sed 's/^\.\///')
    source "$IMG_PATH/.buildinfo"
    make build IMG_PATH="$IMG_PATH"
  fi;
done;
