SOPS_FILES := $(shell find vault -name '*.enc')

encrypt:
	@for file in $(shell find vault -type f \
		! -name '*.enc' \
		! -name '.stow-local-ignore' \
		! -name '.DS_Store' \
		! -name '.gitignore'); do \
		echo "Encrypting $$file -> $$file.enc"; \
		SOPS_AGE_KEY="AGE-SECRET-KEY-DUMMY" \
		sops --encrypt --output $$file.enc $$file; \
	done

# only decrypt files that are newer than the decrypted version
decrypt:
	@SOPS_AGE_KEY=$$(op read "op://Private/sops-age-private-key/secret"); \
	for encfile in $(SOPS_FILES); do \
		plainfile=$$(echo $$encfile | sed 's/\.enc$$//'); \
		if [ ! -f $$plainfile ] || [ $$encfile -nt $$plainfile ]; then \
			echo "Decrypting $$encfile -> $$plainfile"; \
			SOPS_AGE_KEY=$$SOPS_AGE_KEY sops --decrypt --output $$plainfile $$encfile; \
		else \
			echo "Skipping $$encfile (up to date)"; \
		fi \
	done


stow-core:
	stow --target=$(HOME) core

stow-vault:
	stow --target=$(HOME) vault

install: stow-core stow-vault

stage: encrypt
	@echo "Staging files..."
	@git add .

commit: stage
	@read -p "Commit message: " msg; \
	git commit -m "$$msg"

push:
	git push origin main

sync: commit push

.PHONY: encrypt decrypt stow-core stow-vault install stage commit push sync



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
