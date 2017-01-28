autoload -U compinit
compinit

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# extension

# source
source ~/.zsh.alias 
source ~/.zsh.export
source ~/.zsh.peco 
source $GOPATH/src/github.com/nsoushi/describe-ec2/.zsh.describe_ec2
source ~/.zsh.workspace

# unalias list
unalias history
