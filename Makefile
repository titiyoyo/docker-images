T := latest

update-common:
	scripts/update-all.sh ${ARCH}

build-all-arm: update-common
	scripts/build-all.sh arm

build-all-intel: update-common
	scripts/build-all.sh intel

push-all:
	scripts/push-all.sh ${ARCH}

build-push-all-arm: update-common
	scripts/build-push-all.sh arm

build-push-all-intel: update-common
	scripts/build-push-all.sh intel

buildx:
	scripts/buildx.sh ${IMG} ${ARCH}

build:
	scripts/build.sh ${IMG}

push:
	scripts/push.sh ${IMG}

build-push: update-common build push

pull-all-images:
	scripts/refresh-all.sh ${ARCH}
