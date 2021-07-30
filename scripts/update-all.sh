#!/bin/bash

for i in images/* ; do
  for j in $i/*; do
  if [ -d $j ]; then
    cp common/.profile $j;
  else
      cp common/.profile $i;
  fi;
  done;
done;
