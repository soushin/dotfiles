autoload -U compinit
compinit

export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="arrow"

plugins=(git dotenv)
source $ZSH/oh-my-zsh.sh

# dotenv
export ZSH_DOTENV_FILE=.env

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
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# rbenv
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# libpq
export PATH="/usr/local/opt/libpq/bin:$PATH"

