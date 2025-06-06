# Where the magic happens.
export DOTFILES=~/.dotfiles

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*.sh; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

src

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# export PYTHONPATH="/usr/local/lib/:$PYTHONPATH"
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
export PATH=${KREW_ROOT:-$HOME/.krew}/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/lib:/usr/local:/snap/bin:$HOME/bin:$PATH

export DOCKER_REGISTRY=maruftuhin
export REGISTRY=maruftuhin
export GO111MODULE=on
export KIND_IMAGE=kindest/node:v1.16.3

alias gg="git gui"
alias gs="git status"
alias gm="git checkout master;git pull origin master"
alias gmn="git checkout main;git pull origin main"
alias gp="git add .; git commit -a -m added-all; git push origin HEAD"
alias g2h="git push origin HEAD"
alias gr="git reset --hard HEAD"
alias gf="git fetch --all --tags --prune --prune-tags"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=100000
# HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x "$(command -v dircolors)" ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -lgaGFh'
alias l='ls -AF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
export PATH="/usr/local/opt/llvm/bin:$PATH"
. "$HOME/.cargo/env"
export PATH=/Users/udamaruf/.local/share/aquaproj-aqua/bin:/Users/udamaruf/.local/share/zinit/plugins/paulirish---git-open:/opt/homebrew/opt/jpeg/bin:/opt/homebrew/bin:/opt/homebrew/opt/openjdk/bin:/Users/udamaruf/.yarn/bin:/Users/udamaruf/.config/yarn/global/node_modules/.bin:/usr/local/opt/bzip2/bin:/usr/local/opt/libpq/bin:/usr/local/opt/llvm/bin:/usr/local/bin:/Users/udamaruf/.pyenv/bin:/usr/local/opt/openjdk/bin:/usr/libexec:/Users/udamaruf/.pyenv/bin:/usr/local/bin:/usr/local/opt/gnu-time/libexec/gnubin:/usr/local/opt/curl/bin:/usr/local/opt/libpq/bin:/usr/local/opt/curl/bin:/Users/udamaruf/.local/share/zinit/polaris/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/lib:/usr/local:/usr/local/opt/llvm/bin:/snap/bin:/Users/udamaruf/bin:/Users/udamaruf/.local/bin:/Users/udamaruf/.krew/bin:/Users/udamaruf/go/bin:/Users/udamaruf/go/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/udamaruf/Library/Application Support/JetBrains/Toolbox/scripts:/Users/maruf_maruf1/apache-maven-3.6.3/bin
