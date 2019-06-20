
# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --CHSH=yes --RUNZSH=no
fi

# plugin auto-suggestion
if [ ! -d "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
fi

# plugin fast syntax highlight
if [ ! -d "$HOME/.oh-my-zsh/plugins/fast-syntax-highlighting" ]; then
  git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
fi

# plugin powerlevel9k
if [ ! -d "$HOME/.oh-my-zsh/themes/powerlevel9k" ]; then
  git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/themes/powerlevel9k
fi

# theme powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh/themes/powerlevel10k" ]; then
  git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
fi

