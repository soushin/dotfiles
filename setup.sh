#!/bin/bash

# dotfiles
DOT_FILES=( .zshrc .zsh.alias .zsh.peco .zsh.export .zsh.gcloud .tmux.conf)
BASE_DIR="$HOME"/dotfiles
INSTALL_DIR="$BASE_DIR"/install

for file in ${DOT_FILES[@]}
do
    ln -s ${BASE_DIR}/${file} ${HOME}/${file}
done

. ${INSTALL_DIR}/brew.sh
. ${INSTALL_DIR}/astronvim.sh


