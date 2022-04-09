source $1/.buildinfo
echo ">> building image $I:$T in $IMG_PATH"
cd $IMG_PATH && docker build . -t titiyoyo/$I:$T
