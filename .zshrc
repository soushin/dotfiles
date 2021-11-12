autoload -U compinit
compinit

export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="arrow"

plugins=(git dotenv)
source $ZSH/oh-my-zsh.sh

# dotenv
export ZSH_DOTENV_FILE=.env.example

# extension
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# source
source ~/.zsh.alias
source ~/.zsh.peco
source ~/.zsh.export
source ~/.zsh.kube
source ~/.zsh.gcloud

# unalias list
unalias history

# goenv
export GOPATH=$HOME/go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on

# kube-ps1
source "/opt/homebrew/Cellar/kube-ps1/0.7.0/share/kube-ps1.sh"
PS1='$(kube_ps1) '$PS1

# rbenv
eval "$(rbenv init -)"
