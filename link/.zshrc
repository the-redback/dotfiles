# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PYTHONPATH="/usr/local/lib/python3.7:$PYTHONPATH"
export GOPATH=$HOME/go
export GOBIN=/usr/local/go/bin
export PATH=$GOPATH/bin:$GOBIN:$PATH
export PATH=${KREW_ROOT:-$HOME/.krew}/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/lib:/usr/local:/usr/local/opt/llvm/bin:/snap/bin:$HOME/bin:$PATH


if [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
  export PATH=$PATH:$HOME/Library/Python/3.7/bin:/usr/local/bin/python3.7/
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="powerlevel9k/powerlevel9k"
# powerlevel9k is original theme but powerlevel10k is faster version.
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship/spaceship"
# ZSH_THEME="dracula/dracula"

# # ============================== powerlevele9k
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='grey'
# POWERLEVEL9K_MODE="nerdfont-complete"
# #POWERLEVEL9K_MODE="awesome-fontconfig"
# POWERLEVEL9K_STATUS_HIDE_SIGNAME=true

# # fish like directory path, ie, ~/g/s/g/k/postgres
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# POWERLEVEL9K_SHORTEN_DELIMITER=""
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# # POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%118F❯ "
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# # POWERLEVEL9K_LEFT_LEFT_WHITESPACE=''
# # POWERLEVEL9K_LEFT_RIGHT_WHITESPACE=''
# # POWERLEVEL9K_RIGHT_LEFT_WHITESPACE=''
# # POWERLEVEL9K_RIGHT_RIGHT_WHITESPACE=''

# #POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER// }'
# #POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER}'

# # To remove trailing space from all default icons, set POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION
# POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER% }'
#   # To enable default icons for one segment (e.g., dir), set
#   # POWERLEVEL9K_DIR_VISUAL_IDENTIFIER_EXPANSION='${P9K_VISUAL_IDENTIFIER}'.
#   #
#   # To assign a specific icon to one segment (e.g., dir), set
#   # POWERLEVEL9K_DIR_VISUAL_IDENTIFIER_EXPANSION='⭐'.
#   #
#   # To assign a specific icon to a segment in a given state (e.g., dir in state NOT_WRITABLE),
#   # set POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_EXPANSION='⭐'.
#   #
#   # Note: You can use $'\u2B50' instead of '⭐'. It's especially convenient when specifying
#   # icons that your text editor cannot render. Don't forget to put $ and use single quotes when
#   # defining icons via Unicode codepoints.

# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=10
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=5
# POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='palegreen1'
# POWERLEVEL9K_HIDE_BRANCH_ICON=true
# POWERLEVEL9K_VCS_GIT_ICON=$'\uF113'
# #POWERLEVEL9K_COLOR_SCHEME='light'

# # remove trailing space after right prompt
# ZLE_RPROMPT_INDENT=0

# # mainly to remove spaces between vcs icons
# POWERLEVEL9K_VCS_UNTRACKED_ICON='\uF059'
# POWERLEVEL9K_VCS_UNSTAGED_ICON='\uF06A'
# POWERLEVEL9K_VCS_STAGED_ICON='\uF055'
# POWERLEVEL9K_VCS_STASH_ICON='\uF01C'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\uF01A'
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uF01B'
# POWERLEVEL9K_VCS_TAG_ICON='\uF02B'
# POWERLEVEL9K_VCS_COMMIT_ICON='\uE729'
# POWERLEVEL9K_VCS_BRANCH_ICON='\uF126'
# POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON='\uE728'

# #POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# #POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time vcs)
# end =======================================

# common ===========================================
POWERLEVEL9K_TRANSIENT_PROMPT=same-dir
POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito'
#  End ============================================

# Second config ============================================================================================================================
function sp {
  git branch > /dev/null 2>&1 || return 1
  git config user.initials
}

POWERLEVEL9K_DIR_BACKGROUND='237'
POWERLEVEL9K_CUSTOM_GIT_PAIR="echo \$(sp)"
POWERLEVEL9K_CUSTOM_GIT_PAIR_BACKGROUND="clear"
POWERLEVEL9K_CUSTOM_GIT_PAIR_FOREGROUND="blue"
POWERLEVEL9K_CUSTOM_GIT_PAIR_ICON="\uf7af"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
POWERLEVEL9K_DIR_FOREGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"

POWERLEVEL9K_DIR_ETC_BACKGROUND="clear"
POWERLEVEL9K_ETC_ICON='%F{blue}\uf423'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"

# POWERLEVEL9K_GO_ICON="\uf7b7"
# POWERLEVEL9K_GO_ICON="🐹"
POWERLEVEL9K_GO_ICON="\ue724"
POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
POWERLEVEL9K_GO_VERSION_FOREGROUND='081'

POWERLEVEL9K_HOME_ICON="\ufb26"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined)
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf460%F{008}'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''

POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \uf101 "

POWERLEVEL9K_NVM_BACKGROUND='clear'
POWERLEVEL9K_NVM_FOREGROUND='green'

POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
POWERLEVEL9K_OS_ICON_FOREGROUND='cyan'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status go_version nvm os_icon)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time go_version nvm os_icon)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'

POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="none"

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'
# ===================================================================================================================================
ZLE_RPROMPT_INDENT=0
ZLE_LPROMPT_INDENT=0

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
DISABLE_MAGIC_FUNCTIONS=true

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
#   command-not-found
  docker docker-compose
  fasd
  fast-syntax-highlighting
  git
  golang
  history-substring-search
  themes
  vagrant
  zsh-autosuggestions
)

# run 'fast-theme -t zdharma'

source $ZSH/oh-my-zsh.sh

# Pure Theme ===============================
# https://github.com/sindresorhus/pure#install
# fpath+=$HOME/.oh-my-zsh/custom/themes/pure
# autoload -U promptinit; promptinit
# prompt pure
# ============================================

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
alias dc="docker-compose"

# kubectl aliases
alias kc="kubectl"
alias k="kubectl"

# xclip
if [[ "$(uname 2> /dev/null)" == "Linux" ]]; then
  alias xc="xclip -selection clipboard ; xclip -o -selection clipboard"
  alias xp="xclip -o -selection clipboard"
else
  alias xc="pbcopy; pbpaste"
  alias xp="pbpaste"
fi

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
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# ansible configuration
export ANSIBLE_CALLBACK_WHITELIST=profile_tasks
export ANSIBLE_STRATEGY_PLUGINS="/usr/local/lib/python3.7/site-packages/ansible_mitogen/plugins/strategy"
export ANSIBLE_STRATEGY=mitogen_linear

# End

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#  Starship faster prompt
# https://starship.rs/
# eval "$(starship init zsh)"