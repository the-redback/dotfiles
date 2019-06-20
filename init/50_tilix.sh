#!/usr/bin/env bash

config_file="$DOTFILES/conf/tilix.conf"

if [[ "$(type -P tilix)" ]]; then
    dconf load /com/gexperts/Tilix/ < $config_file
fi
