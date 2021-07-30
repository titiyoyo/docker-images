#!/bin/bash

for i in images/*; do
  for j in $i/*; do
    if [ -d "$j" ]; then
      IMG_PATH=$j
      source "$j/.buildinfo"
      echo ">> building image $I:$T in $j"
    else
      IMG_PATH=$i
      source "$i/.buildinfo"
      echo ">> building image $I:$T in $i"
    fi;
    make push IMG_PATH=$IMG_PATH
  done;
done;
