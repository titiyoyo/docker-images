T := latest

update-common:
	scripts/update-all.sh

build-all-arm: update-common
	scripts/build-all.sh arm

build-all-intel: update-common
	scripts/build-all.sh intel

push-all:
	scripts/push-all.sh

build-push-all-arm: update-common
	scripts/build-push-all.sh arm

build-push-all-intel: update-common
	scripts/build-push-all.sh intel

buildx:
	scripts/buildx.sh ${IMG_PATH} ${ARCH}

build:
	scripts/build.sh ${IMG_PATH}

push:
	scripts/push.sh ${IMG_PATH}

build-push: update-common build push
