autoload -U compinit
compinit

export PATH=/usr/local/bin:$PATH
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
source ~/.zsh.peco
source ~/.zsh.export
source ~/.zsh.kube
source ~/.zsh.gcloud

# unalias list
unalias history

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# kube-ps1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1) '$PS1
