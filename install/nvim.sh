#!/bin/bash

CONFIG_DIR="$HOME"/.config
CACHE_DIR="$HOME"/.cache/dein
mkdir -p $CONFIG_DIR
mkdir -p $CACHE_DIR

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $CACHE_DIR
rm -rf ./installer.sh

ln -nfs ${BASE_DIR}/nvim ${CONFIG_DIR}/nvim
mkdir -p ${CONFIG_DIR}/nvim/colors/
curl https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim -o ${CONFIG_DIR}/nvim/colors/hybrid.vim
