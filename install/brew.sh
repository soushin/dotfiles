#!/bin/bash

# homebrew install
if [ -z `which brew` ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# general
brew install bash
brew install zsh
brew install git
brew install gh
brew install tig
brew install wget
brew install tree
brew install jq
brew install yq
brew install gcc
brew install tmux
brew install reattach-to-user-namespace

brew install ghq
brew install peco

# prompt
brew install starship
brew install font-hack-nerd-font
brew install font-daddy-time-mono-nerd-font

# secrets
brew install gpg
brew install git-secret

# gcloud
brew install --cask google-cloud-sdk

# devops
brew install skaffold

# node
brew install nodeenv
brew install yarn

# terraform
brew install tfenv

