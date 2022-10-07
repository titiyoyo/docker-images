# Docker images repository

This repository is meant to store, build and push the docker dev images for my personal projects.  
It provides:
- `docker` development images to be used in `docker-compose` files or as unitary images
- unary `build` and `push` `makefile` commands 
- scripts for `building` and `pushing` images automatically to a docker repository 

## Folder structure
| Name | Description |
|------|-------------|
| `common` | Common files for all images (e.g: `.profile`) |
| `images` | Docker images folder |
| `scripts` | Scripts used by the `Makefile` commands |

## Usage
You can either copy the images or use my [docker repository](https://hub.docker.com/u/titiyoyo) where you will find already built images

## Makefile commands

### Unitary commands
Perform actions on **only ONE** image at a time 

| Name | Description | Example use |
|------|-------------|-------------|
| `build` | builds an image | `make build IMG_PATH=images/nginx` |
| `push` | pushes an already built image | `make push IMG_PATH=images/nginx` |
| `build-push` | builds **AND** pushes an already built image | `make build-push IMG_PATH=images/nginx` |

### Loop commands
Perform actions on **ALL** images

To be able to use them, every image folder must have a `.buildinfo` file, [see section below](#buildinfo)

| Name | Description | Example use |
|------|-------------|-------------|
| `update-common` | updates the common files for every image | `make update-comon` |  
| `build-all` | builds every image in the `images` folder | `make build-all` |
| `push-all` | pushes every already built image from the `images` folder | `make push-all` |
| `build-push-all` | builds **AND** pushes every already built image from the `images` folder | `make build-push-all` |

## <a id="buildinfo"></a> `.buildinfo` file
`.buildinfo` files are very simple, and are comprised of only 2 variables
```shell
T=mysql-5.7 # image tag
I=database # image name
```
You can put whatever you like in that file as long as a shell script can source a `T` and an `I` variable

