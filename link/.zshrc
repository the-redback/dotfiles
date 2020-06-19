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
  export PATH=$PATH:$HOME/Library/Python/3.7/bin:/usr/local/bin/python3.7/:/usr/local/lib/ruby/gems/2.7.0/bin
fi

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
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# ---------------------------- Pluggin From Github --------------------------- #
zinit load zsh-users/zsh-history-substring-search
HISTORY_SUBSTRING_SEARCH_FUZZY="true"

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
    romkatv/zsh-prompt-benchmark

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
        OMZP::fasd \
        OMZP::golang \
        OMZP::vagrant
zinit snippet OMZP::git
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
# alias l='ls -AF'
# better syntax. https://github.com/ogham/exa
# alias ll='exa -laF'
# alias l='exa -aF'
# better syntax and icons
alias ll='lsd -lA --group-dirs first --blocks permission,user,size,date,name --date relative'
alias lz='lsd -lA --group-dirs first --blocks permission,user,size,date,name --date relative --total-size -S'
alias lt='lsd -A --group-dirs first --tree'
alias l='lsd -A'


# cat with bat. https://www.cyberciti.biz/open-source/bat-linux-command-a-cat-clone-with-written-in-rust/
# alias cat='bat --theme Dracula -p'
# export BAT_PAGER=""

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
# function src() {
#   local file
#   if [[ "$1" ]]; then
#     source "$DOTFILES/source/$1.zsh"
#   else
#     for file in $DOTFILES/source/*.zsh; do
#       source "$file"
#     done
#   fi
# }

# src

# ansible configuration
# export ANSIBLE_CALLBACK_WHITELIST=profile_tasks
# export ANSIBLE_STRATEGY_PLUGINS="/usr/local/lib/python3.7/site-packages/ansible_mitogen/plugins/strategy"
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
  export PATH=$PATH:$HOME/Library/Python/3.7/bin:/usr/local/bin/python3.7/
  export PATH="$PATH:/usr/local/lib/ruby/gems/2.7.0/bin"
  export PATH="/usr/local/opt/ruby/bin:$PATH"
  export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
  export PATH="/usr/local/opt/llvm/bin:$PATH"
fi
