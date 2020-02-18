#!/usr/bin/env bash

# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

config_file="$DOTFILES/conf/tilix.conf"

if [[ "$(type -P tilix)" ]]; then
    dconf load /com/gexperts/Tilix/ < $config_file
fi
