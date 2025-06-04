# Dotfiles Overview

This project contains the following directory structure:

- `core` - Files and folders to be symlinked to `$HOME` while preserving their structure.
- `vault` - Files and folders with similar functionality as `core`, but stored as encrypted.
- `Makefile` - Contains build scripts and commands for managing the project.
- `.sops.yaml` - Configuration for SOPS (Secrets OPerationS) to manage encrypted files.
- `README.md` - Project documentation.

## Installation

## Generate public and private keys for SOPS with age

1. Generate sop key

```bash
mkdir -p ~/.config/sops/age
age-keygen -o ~/.config/sops/age/key.txt
```

```bash
PUB_KEY=$(grep '^# public key:' ~/.config/sops/age/key.txt | awk '{print $4}')
PRIV_KEY=$(grep -v '^#' ~/.config/sops/age/key.txt)

echo "$PUB_KEY"
echo "$PRIV_KEY"

op item create --category "Secure Note" --title "sops-age-public-key" "secret=$PUB_KEY"
op item create --category "Secure Note" --title "sops-age-private-key" "secret=$PRIV_KEY"
```

1. Clone the repository:
```sh
git clone <repository-url>
```



## Usage

- Files in `core` will be copied to your `$HOME` directory, preserving their folder structure.
- Files in `vault` are stored encrypted and require decryption before use.

Refer to project scripts or documentation for details on encryption and copying.