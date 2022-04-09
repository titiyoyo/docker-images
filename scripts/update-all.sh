#!/bin/bash

DIRS=$(find . -name .buildinfo | xargs dirname )

for dir in $DIRS; do
  cp common/.profile $dir;
done;