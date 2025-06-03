define LOAD_AGE_SECRET
$(eval export SOPS_AGE_KEY=$(shell op read "op://Private/sops-age-private-key/secret" | grep '^AGE-SECRET-KEY'))
endef

encrypt:
	@echo "Encrypting decrypted files to .enc..."
	@find .config -type f ! -name '*.enc' -exec sh -c 'sops --encrypt "$$0" > "$$0.enc"' {} \;

decrypt:
	@echo "Decrypting .enc files..."
	$(call LOAD_AGE_SECRET)
	@find .config -type f -name '*.enc' -exec sh -c 'sops --decrypt "$$0" > "$${0%.enc}"' {} \;

stow:
	@echo "Symlinking dotfiles using stow..."
	@stow *

stage: encrypt
	@echo "Staging only encrypted files..."
	@git add $(shell find .config -type f -name '*.enc')

commit:
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
