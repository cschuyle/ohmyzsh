alias ll='ls -ltr'
alias lls='ls -lSr'

alias k=kubectl

alias gs='git status'

alias gw='./gradlew'

# TODO: go to https://stackoverflow.com/questions/68605927/how-can-i-change-path-variable-in-zsh an look for 'typeset -aU path'
export PATH=$PATH:~/.composer/vendor/bin

if [[ -d "$HOME/bin" ]]; then
    export PATH="$PATH:$HOME/bin"
fi

if [[ -d "$HOME/git-log2json" ]]; then
    export PATH="$PATH:$HOME/git-log2json"
fi

# Activate direnv
if [[ ! -z "$(type direnv)" ]]; then
  eval "$(direnv hook zsh)"
fi

# Activate thefuck
if [[ ! -z "$(type fuck)" ]]; then
  eval "$(thefuck --alias)"
  alias f=fuck
fi 

alias w='curl -s wttr.in/Superior,CO'
alias w2='curl -s v2.wttr.in/Superior,CO'
alias wmoon='curl -s wttr.in/moon'

alias k=kubectl

alias gs='git status'

# TODO: go to https://stackoverflow.com/questions/68605927/how-can-i-change-path-variable-in-zsh an look for ‘typeset -aU path’
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:$HOME/bin"
alias llr='ls -ltr'
alias lls='ls -lSr'
