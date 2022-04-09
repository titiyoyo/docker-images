source $1/.buildinfo
echo ">> pushing image $I:$T in $IMG_PATH"
docker push titiyoyo/$I:$T
