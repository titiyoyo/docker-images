#!/bin/bash

ARCH=$1
DIRS=$(find . -name .buildinfo | xargs dirname)

for dir in $DIRS; do
  if [[ "$dir" == *"$ARCH"* ]]; then
    cp common/.profile $dir
  fi
done
