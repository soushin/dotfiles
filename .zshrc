autoload -U compinit
compinit

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="arrow"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# extension
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# source
source ~/.zsh.alias
source ~/.zsh.export
source ~/.zsh.peco
source ~/.zsh.workspace
source ~/.zsh.docker

# unalias list
unalias history

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
