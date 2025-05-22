#!/bin/bash

if [[ ! -d ~/.config/nvim ]]; then
    brew install neovim 

    # fonts
    brew install font-hack-nerd-font
    brew install font-daddy-time-mono-nerd-font

    # astronvim
    git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim 
    rm -rf ~/.config/nvim/.git
fi

