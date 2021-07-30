T := latest

update-common:
	scripts/update-all.sh

build-all:
	scripts/build-all.sh

build:
	scripts/build.sh $$IMG_PATH

push:
	scripts/push.sh $$IMG_PATH

build-push: update-common build push
