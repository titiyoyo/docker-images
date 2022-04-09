#!/bin/bash

DIRS=$(find . -name .buildinfo | xargs dirname )

for dir in $DIRS; do
  IMG_PATH=$(echo $dir | sed 's/^\.\///')
  source "$IMG_PATH/.buildinfo"
  make push IMG_PATH="$IMG_PATH"
done;
