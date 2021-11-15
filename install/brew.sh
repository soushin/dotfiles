#!/bin/bash

# homebrew install
if [ -z `which brew` ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install
brew install bash
brew install zsh
brew install git
brew install gh
brew install wget
brew install direnv
brew install tree
brew install mercurial
brew install jq
brew install gcc
brew install tmux
brew install reattach-to-user-namespace

brew install ghq
brew install peco

brew install redis

brew install go
brew install node
brew install goenv
brew install rbenv

brew install kubernetes-cli
brew install kubernetes-helm
brew install kube-ps1
brew install stern
brew install mysql-client
brew install libpq

brew install neovim
brew install the_silver_searcher
brew install ripgrep

brew install pyenv
brew install python3
