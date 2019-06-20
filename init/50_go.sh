#!/usr/bin/env bash

if [[ ! -e "$(type -P go)" ]]; then
    pushd ~/Downloads
    sudo apt-get update
    sudo apt-get install -y build-essential git curl wget
    wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go1.12.6.linux-amd64.tar.gz
    sudo chown -R $(id -u):$(id -g) /usr/local/go
    rm go1.12.6.linux-amd64.tar.gz
    popd
fi
