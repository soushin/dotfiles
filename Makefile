HOME := $(HOME)
PWD := $(PWD)
DOTFILE_PATH := ${HOME}/dotfiles

.PHONY: install
install:
	@if [ ! -e ${DOTFILE_PATH} ]; then \
		mkdir -p ${DOTFILE_PATH}; \
		git clone https://github.com/soushin/dotfiles.git ${DOTFILE_PATH}; \
	fi
	cd ${DOTFILE_PATH} && ./setup.sh
