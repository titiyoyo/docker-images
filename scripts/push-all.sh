#!/bin/bash

DIRS=$(find . -name .buildinfo | xargs dirname )

for dir in $DIRS; do
  IMG_PATH=$(echo $dir | sed 's/^\.\///')
  make push IMG_PATH="$IMG_PATH"
done;
