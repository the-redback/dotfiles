autoload -U +X compinit && compinit

# HISTFILE=~/.zsh_history
# HISTSIZE=500000
# SAVEHIST=500000
# setopt appendhistory
# setopt INC_APPEND_HISTORY  
# setopt SHARE_HISTORY

# zmodload zsh/zprof
export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PYTHONPATH="/usr/local/lib/python3.8:$PYTHONPATH"
export GOPATH=$HOME/go
# export GOBIN=/usr/local/go/bin
export GOBIN=$HOME/go/bin
export PATH=$GOPATH/bin:$GOBIN:$PATH
export PATH=${KREW_ROOT:-$HOME/.krew}/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/lib:/usr/local:/usr/local/opt/llvm/bin:/snap/bin:$HOME/bin:$PATH


# if [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
#   export PATH=$PATH:$HOME/Library/Python/3.8/bin:/usr/local/bin/python3.8/:/usr/local/lib/ruby/gems/2.7.0/bin
# fi

# ---------------------------------------------------------------------------- #
#                                 powerlevel10k                                #
# ---------------------------------------------------------------------------- #
POWERLEVEL9K_TRANSIENT_PROMPT=same-dir
# POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito'

# function sp {
#   git branch > /dev/null 2>&1 || return 1
#   git config user.name
# }

POWERLEVEL9K_DIR_BACKGROUND='237'
# POWERLEVEL9K_CUSTOM_GIT_PAIR="echo \$(sp)"
# POWERLEVEL9K_CUSTOM_GIT_PAIR_BACKGROUND="clear"
# POWERLEVEL9K_CUSTOM_GIT_PAIR_FOREGROUND="blue"
# POWERLEVEL9K_CUSTOM_GIT_PAIR_ICON="\uf7af"
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


# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined vcs)
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

POWERLEVEL9K_TIME_BACKGROUND='clear'
POWERLEVEL9K_TIME_FOREGROUND='178'
POWERLEVEL9K_TIME_FORMAT='%D{%I:%M}'

# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status go_version nvm os_icon)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time go_version nvm os_icon)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'

POWERLEVEL9K_SHORTEN_DELIMITER='%F{008}…%F{008}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="none"

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
# POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='005'

# ---------------------------------------------------------------------------- #
#                          Plugin Management by Zinit                          #
# ---------------------------------------------------------------------------- #

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

### Added by Zinit's installer
if [[ ! -f ${ZINIT_HOME}/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# ---------------------------- Pluggin From Github --------------------------- #
zinit load zsh-users/zsh-history-substring-search
HISTORY_SUBSTRING_SEARCH_FUZZY="true"

zinit wait lucid for \
    light-mode \
  zsh-users/zsh-completions \
  zdharma-continuum/fast-syntax-highlighting \
  romkatv/zsh-prompt-benchmark \
  paulirish/git-open

zinit light zsh-users/zsh-autosuggestions


# ----------------------------------- Theme ---------------------------------- #
# zinit ice pick"async.zsh" src"pure.zsh"
# zinit light sindresorhus/pure

zinit ice depth=1 
zinit light romkatv/powerlevel10k
# zinit light bhilburn/powerlevel9k
# zinit light denysdovhan/spaceship-prompt
# zinit light dracula/zsh

# zinit ice as"completion" id-as"dc-complete" wait lucid
# zinit load docker/compose

# zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
#     atpull'%atclone' pick"clrs.zsh" nocompile'!' \
#     atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
# zinit light trapd00r/LS_COLORS

# ------------------------- Oh My Zsh Plugins/Themes ------------------------- #
# Oh MY Zsh plugins
# Example: zinit snippet ""
# OMZL::git.zsh            < with .zsh file
# OMZP::git                < plugin
# OMZ::plugins/git         < plugin
# OMZT::gnzh               < theme

zinit wait lucid for \
        OMZP::colored-man-pages \
        OMZP::command-not-found \
        OMZP::docker/_docker \
        OMZP::docker-compose \
        OMZP::extract \
        OMZP::fasd \
        OMZP::golang \
        OMZP::kubectl \
        OMZP::minikube \
        OMZP::vagrant \
        OMZP::mvn \
        OMZP::aws \
        OMZP::git
# ----------------------- Speed Up ZSH-autosuggestions ----------------------- #
autoload -Uz add-zsh-hook

typeset -gi _UNHOOK_ZSH_AUTOSUGGEST_COUNTER=0

function _unhook_autosuggest() {
  emulate -L zsh
  if (( ++_UNHOOK_ZSH_AUTOSUGGEST_COUNTER == 2 )); then
    add-zsh-hook -D precmd _zsh_autosuggest_start
    add-zsh-hook -D precmd _unhook_autosuggest
    unset _UNHOOK_ZSH_AUTOSUGGEST_COUNTER
  fi
}

add-zsh-hook precmd _unhook_autosuggest

# ------------------- History substring search Key bindings ------------------ #
if [[ -n "$terminfo[kcuu1]" ]]; then
  bindkey -M emacs "$terminfo[kcuu1]" history-substring-search-up
  bindkey -M viins "$terminfo[kcuu1]" history-substring-search-up
  bindkey "$terminfo[kcuu1]" history-substring-search-up
fi
if [[ -n "$terminfo[kcud1]" ]]; then
  bindkey -M emacs "$terminfo[kcud1]" history-substring-search-down
  bindkey -M viins "$terminfo[kcud1]" history-substring-search-down
  bindkey "$terminfo[kcud1]" history-substring-search-down
fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# ----------------------------------- Autocompletion ----------------------------------- #

# # source /etc/zsh_command_not_found
export DOTFILES=~/.dotfiles
# set -x

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

# Execute Sourcing source folder
src

# completion of aws
if type aws >/dev/null 2>&1; then
  complete -C '/opt/homebrew/bin/aws_completer' aws
fi

# ---------------------------------------------------------------------------- #

# use arrow to select from tab completion options
zstyle ':completion:*' menu select

ZLE_RPROMPT_INDENT=0
# ZLE_LPROMPT_INDENT=0

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP

export DOCKER_REGISTRY=maruftuhin
export REGISTRY=maruftuhin
export GO111MODULE=on
export KIND_IMAGE=kindest/node:v1.16.3

# some more ls aliases
# alias ll='ls -lgaFh'
# salias l='ls -AF'
# better syntax. https://github.com/ogham/exa
# alias ll='exa -laF'
# alias l='exa -aF'
# better syntax and icons

alias ll='lsd -lA --group-dirs first --blocks permission,user,size,date,name --date relative'
alias lz='lsd -lA --group-dirs first --blocks permission,user,size,date,name --date relative --total-size -S'
alias lt='lsd -A --group-dirs first --tree'
alias l='lsd -A'


# cat with bat. https://www.cyberciti.biz/open-source/bat-linux-command-a-cat-clone-with-written-in-rust/
alias bat='bat --theme Dracula -p'
export BAT_PAGER=""
alias cat='bat --theme Dracula -p'

# git aliases
alias gg="git gui"
alias gs="git status"
alias gm="git checkout master;git pull origin master"
alias gp="git add .; git commit -a -m added-all; git push origin HEAD"
alias g2h="git push origin HEAD"
alias gr="git reset --hard HEAD"
alias gf="git fetch --all --tags --prune --prune-tags"
alias go="git open"
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

# ansible configuration
# export ANSIBLE_CALLBACK_WHITELIST=profile_tasks
# export ANSIBLE_STRATEGY_PLUGINS="/usr/local/lib/python3.8/site-packages/ansible_mitogen/plugins/strategy"
# export ANSIBLE_STRATEGY=mitogen_linear
# End

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#  Starship faster prompt
# https://starship.rs/
# eval "$(starship init zsh)"

export PATH="/usr/local/opt/curl/bin:$PATH"

# --------------------------- History Configuration -------------------------- #
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
# setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
# setopt SHARE_HISTORY             # Share history between all sessions.
unsetopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
# setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
# setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
# setopt HIST_BEEP                 # Beep when accessing nonexistent history.



# ----------------------------------- Misc ----------------------------------- #
# auto cd
setopt auto_cd

# Easier navigation: .., ..., -
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

export AIRFLOW_HOME=~/airflow

prompt_pure_cmd_k() {
	# Enable output to terminal and clear iTerm2 scrollback, the newline
	# adds an empty row at the beginning, similar to `clear`.
	zle -I
	print -n '\e]1337;ClearScrollback\a\n'
}
	
zle -N clear-screen prompt_pure_cmd_k

if [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
#   export PATH=$PATH:$HOME/Library/Python/3.8/bin:/usr/local/bin/python3.8/
#   export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin"
#   export PATH="/usr/local/opt/ruby/bin:$PATH"
#   export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
#   export PATH="/usr/local/opt/llvm/bin:$PATH"
fi
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/gnu-time/libexec/gnubin:$PATH"
export PATH="/usr/local/bin:$PATH"
# maven
export PATH="$PATH:/Users/maruf_maruf1/apache-maven-3.6.3/bin"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export PATH="/usr/local/opt/openjdk/bin:/usr/libexec:$PATH"

# hadoop start all application in mac
# alias hstart=/usr/local/Cellar/hadoop/3.3.0/sbin/start-all.sh
# alias hstop=/usr/local/Cellar/hadoop/3.3.0/sbin/stop-all.sh
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib -L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include -I/usr/local/opt/zlib/include"

export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/maruf_maruf1/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/maruf_maruf1/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/maruf_maruf1/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/maruf_maruf1/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
export PATH="/usr/local/opt/libpq/bin:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/bzip2/bin:$PATH"
alias python=/usr/bin/python3
alias pip=/usr/bin/pip3

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source <(kubectl completion zsh)

# ----------------------------------- Zeiss ----------------------------------- #

region () {
    case "$1" in
        ue1)
            export AWS_REGION=us-east-1;
            export VIX_REGION=ue1
        ;;
        ue2)
            export AWS_REGION=us-east-2;
            export VIX_REGION=ue2
        ;;
        uw2)
            export AWS_REGION=us-west-2;
            export VIX_REGION=uw2
        ;;
        cc1)
            export AWS_REGION=ca-central-1;
            export VIX_REGION=cc1
        ;;
        ec1)
            export AWS_REGION=eu-central-1;
            export VIX_REGION=ec1
        ;;
        *)
            echo "Expected one of [ue1,ue2,uw2,cc1]"
        ;;
    esac
}
creds() {
  case "$1" in
    prod)
        export AWS_PROFILE=vixprod
        # echo "Now using the AWS prod account"
    ;;
    dev)
        export AWS_PROFILE=vixdev
        # echo "Now using the AWS dev account"
    ;;
    *)
        # echo "Expected either dev or prod"
    ;;
  esac
}

creds prod
region uw1

# ----------------------------------- Other ----------------------------------- #

