#!/bin/bash

# homebrew install
if [ -z `which brew` ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install
brew install bash
brew install zsh
brew install git

brew install ghq
brew install peco

brew install go
