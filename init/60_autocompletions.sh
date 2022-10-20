#!/usr/bin/env bash

# Autocompletion for Minikube.
#

if type minikube >/dev/null 2>&1; then
  minikube completion bash > $DOTFILES/source/50_minikube.sh
  minikube completion zsh > $DOTFILES/source/50_minikube.zsh
fi

if type kubectl >/dev/null 2>&1; then
  kubectl completion bash > $DOTFILES/source/50_kubectl.sh
  kubectl completion zsh > $DOTFILES/source/50_kubectl.zsh
fi

if type helm >/dev/null 2>&1; then
  helm completion bash > $DOTFILES/source/50_helm.sh
  helm completion zsh > $DOTFILES/source/50_helm.zsh
fi


if type kind >/dev/null 2>&1; then
  kind completion bash > $DOTFILES/source/50_kind.sh
  kind completion zsh > $DOTFILES/source/50_kind.zsh
fi
