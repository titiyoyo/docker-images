#!/bin/bash

NB_COMMITS=$(git cherry -v origin/master | wc -l)
CHANGED_FILES=$(git --no-pager diff --name-only "HEAD~$NB_COMMITS")

DIRNAMES=()
for changed_file in $CHANGED_FILES; do
    DIRNAMES+=("$(dirname $changed_file)")
done

UNIQUE_DIRNAMES=$(printf "%s\n" "${DIRNAMES[@]}" | sort -u)

for dirname in $UNIQUE_DIRNAMES; do
    if [[ $dirname == *"images"* && -f "$dirname/Dockerfile" && -f "$dirname/.buildinfo" ]]; then
        echo "processing $dirname"

        ARCH=linux/amd64
        if [[ $dirname == *"arm"* ]]; then
            ARCH=linux/arm64
        fi

        make buildx "IMG=$dirname" "ARCH=$ARCH"
    else
        echo ">> skipping $dirname"
    fi
done