#!/bin/bash

#!/bin/bash

# dotfiles
DOT_FILES=( .zshrc .zsh.alias .zsh.peco .zsh.export .zsh.kube .zsh.gcloud .tigrc)
BASE_DIR="$HOME"/dotfiles
INSTALL_DIR="$BASE_DIR"/install

for file in ${DOT_FILES[@]}
do
    ln -s ${BASE_DIR}/${file} ${HOME}/${file}
done

[[ ! -d ~/.oh-my-zsh ]] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

. ${INSTALL_DIR}/brew.sh
. ${INSTALL_DIR}/goget.sh
. ${INSTALL_DIR}/python.sh
. ${INSTALL_DIR}/nvim.sh


