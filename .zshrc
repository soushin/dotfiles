autoload -U compinit
compinit

export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# prompt
eval "$(starship init zsh)"

# source
source ~/.zsh.alias
source ~/.zsh.peco
source ~/.zsh.export
source ~/.zsh.gcloud

# go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GOROOT=$(go1.22.2 env GOROOT)
export PATH=$PATH:$GOROOT/bin