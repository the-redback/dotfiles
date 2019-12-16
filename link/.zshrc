export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/snap/bin:$PATH
export PYTHONPATH=$HOME
export PATH=$PYTHONPATH/bin:/usr/local/go/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
export PATH=${KREW_ROOT:-$HOME/.krew}/bin:$PATH
export PATH=/snap/bin:$PATH
export PATH=/usr/local/bin/:$PATH
export PATH=/usr/bin/:$PATH
export PATH=~/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/maruf/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="powerlevel9k/powerlevel9k"
# powerlevel9k is original theme but powerlevel10k is faster version.
ZSH_THEME="powerlevel10k/powerlevel10k"

# ============================== powerlevele9k
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='blue'
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_STATUS_HIDE_SIGNAME=true

# fish like directory path, ie, ~/g/s/g/k/postgres
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)
POWERLEVEL9K_VCS_SHORTEN_LENGTH=15
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=13
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_GIT_ICON=$'\uF113 '
#POWERLEVEL9K_COLOR_SCHEME='light'

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time vcs) 

# end =======================================

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "agnoster" "amuse")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git kubectl minikube themes zsh-syntax-highlighting zsh-autosuggestions)
plugins=(
  command-not-found
  docker
  git
  golang
  themes
  fast-syntax-highlighting
  zsh-autosuggestions
  fasd
  history-substring-search
  docker docker-compose
  vagrant
)

# run 'fast-theme -t zdharma'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP

export DOCKER_REGISTRY=maruftuhin
export REGISTRY=maruftuhin
export GO111MODULE=on
export KIND_IMAGE=kindest/node:v1.16.3

# some more ls aliases
alias ll='ls -lgaFh'
alias l='ls -AF'

# git aliases
alias gg="git gui"
alias gs="git status"
alias gm="git checkout master;git pull origin master"
alias gp="git add .; git commit -a -m added-all; git push origin HEAD"
alias g2h="git push origin HEAD"
alias gr="git reset --hard HEAD"
alias gf="git fetch --all --tags --prune --prune-tags"

# kubectl aliases
alias kc="kubectl"
alias k="kubectl"

# xclip
alias xc="xclip -selection clipboard ; xclip -o -selection clipboard"
alias xp="xclip -o -selection clipboard"

# source /etc/zsh_command_not_found
export DOTFILES=~/.dotfiles

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.zsh"
  else
    for file in $DOTFILES/source/*.zsh; do
      source "$file"
    done
  fi
}

src

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/maruf/google-cloud-sdk/path.zsh.inc' ]; then . '/home/maruf/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/maruf/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/maruf/google-cloud-sdk/completion.zsh.inc'; fi
