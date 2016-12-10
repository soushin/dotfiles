#!/bin/bash

DOT_FILES=( .zshrc .zshrc_alias .vimrc .vim)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
