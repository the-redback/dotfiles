#!/usr/bin/env bash

# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --CHSH=yes --RUNZSH=no
fi

# plugin auto-suggestion
if [ ! -d "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# plugin fast syntax highlight
if [ ! -d "$HOME/.oh-my-zsh/plugins/fast-syntax-highlighting" ]; then
  git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
fi

# plugin history-substring-search
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/history-substring-search" ]; then
   git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search

fi

# plugin powerlevel9k
if [ ! -d "$HOME/.oh-my-zsh/themes/powerlevel9k" ]; then
  git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
fi

# theme powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
fi

# theme spaceship
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/spaceship" ]; then
  git clone https://github.com/denysdovhan/spaceship-prompt.git $HOME/.oh-my-zsh/custom/themes/spaceship
fi


# Autocompletion for Minikube.
#

if [ -e $commands[minikube] ]; then
  minikube completion bash > $DOTFILES/source/50_minikube.sh
  minikube completion zsh > $DOTFILES/source/50_minikube.zsh
fi

if [ -e $commands[kubectl] ]; then
  kubectl completion bash > $DOTFILES/source/50_kubectl.sh
  kubectl completion zsh > $DOTFILES/source/50_kubectl.zsh
fi

if [ -e $commands[helm] ]; then
  helm completion bash > $DOTFILES/source/50_helm.sh
  helm completion zsh > $DOTFILES/source/50_helm.zsh
fi


if [ -e $commands[kind] ]; then
  kind completion bash > $DOTFILES/source/50_kind.sh
  kind completion zsh > $DOTFILES/source/50_kind.zsh
fi
