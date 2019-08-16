HOME := $(HOME)
PWD := $(PWD)
DOTFILE_PATH := ${HOME}/.dotfiles

.PHONY: setup
setup:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew install git

.PHONY: install
install:
	mkdir ${DOTFILE_PATH}
	git clone https://github.com/soushin/dotfiles.git ${DOTFILE_PATH}
	cd ${DOTFILE_PATH}
	./setup.sh
