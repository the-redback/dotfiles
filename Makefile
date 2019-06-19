# ref: https://github.com/maruf/dotfiles/blob/master/Makefile

IMAGE_PREFIX = maruftuhin
IMAGE_REPO = dotfiles
IMAGE_VERSION ?= latest
IMAGE_NAME = $(IMAGE_PREFIX)/$(IMAGE_REPO):$(IMAGE_VERSION)

.PHONY: build push run

build:
	docker build -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

run:
	docker run -ti --rm $(IMAGE_NAME)

kube-run:
	kubectl run -i -t --image=$(IMAGE_NAME) shell --restart=Never --rm

default: build
