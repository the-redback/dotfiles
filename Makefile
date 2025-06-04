SOPS_FILES := $(shell find vault -name '*.enc')

define LOAD_AGE_SECRET
$(eval export SOPS_AGE_KEY=$(shell op read "op://Private/sops-age-private-key/secret" | grep '^AGE-SECRET-KEY'))
endef

encrypt:
	@for file in $(shell find vault -type f ! -name '*.enc' ! -name '.stow-local-ignore' ! -name '.DS_Store' ! -name '.gitignore'); do \
		echo "Encrypting $$file -> $$file.enc"; \
		SOPS_AGE_KEY=$$SOPS_AGE_KEY sops --encrypt --output $$file.enc $$file; \
	done

decrypt:
	@for file in $(SOPS_FILES); do \
		outfile=$$(echo $$file | sed 's/\.enc$$//'); \
		echo "Decrypting $$file -> $$outfile"; \
		SOPS_AGE_KEY=$$SOPS_AGE_KEY sops --decrypt --output $$outfile $$file; \
	done

stow-core:
	stow --target=$(HOME) core

stow-vault:
	stow --target=$(HOME) vault

stow: stow-core stow-vault

stage: encrypt
	@echo "Staging....."
	@git add .

commit: stage
	@read -p "Commit message: " msg; \
	git commit -m "$$msg"

push:
	git push origin main

sync: stage commit push

.PHONY: encrypt decrypt stow stage commit push sync


# IMAGE_PREFIX = maruftuhin
# IMAGE_REPO = dotfiles
# IMAGE_VERSION ?= latest
# IMAGE_NAME = $(IMAGE_PREFIX)/$(IMAGE_REPO):$(IMAGE_VERSION)

# .PHONY: build push run install

# build:
# 	docker build -t $(IMAGE_NAME) .

# push:
# 	docker push $(IMAGE_NAME)

# run:
# 	docker run -ti --rm $(IMAGE_NAME)

# kube-run:
# 	kubectl run -i -t --image=$(IMAGE_NAME) shell --restart=Never --rm

# install:
# 	./bin/dotfiles

# default: build
