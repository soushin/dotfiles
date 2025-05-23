#!/bin/bash

if [[ ! -d ~/.config/nvim ]]; then
    brew install neovim 

    brew install ripgrep

    # astronvim
    git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim 
    rm -rf ~/.config/nvim/.git
fi

