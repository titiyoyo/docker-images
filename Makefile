T := latest

update-common:
	scripts/update-all.sh

build-all:
	scripts/build-all.sh

push-all:
	scripts/push-all.sh

build-push-all:
	scripts/build-push-all.sh

build:
	scripts/build.sh $$IMG_PATH

push:
	scripts/push.sh $$IMG_PATH

build-push: update-common build push
