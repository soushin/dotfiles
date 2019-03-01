#!/bin/bash

CONFIG_DIR="$HOME"/.config

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm -rf ./installer.sh

ln -nfs ${BASE_DIR}/nvim ${CONFIG_DIR}/nvim
