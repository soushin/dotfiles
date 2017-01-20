autoload -U compinit
compinit

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# source
source ~/.zsh.alias 
source ~/.zsh.export
source ~/.zsh.peco 

# unalias list
unalias history
