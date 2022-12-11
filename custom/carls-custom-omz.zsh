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
eval "$(direnv hook zsh)"

# Activate thefuck
eval $(thefuck --alias)
alias f=fuck

alias w='curl -s wttr.in/Superior,CO'
alias w2='curl -s v2.wttr.in/Superior,CO'
alias wmoon='curl -s wttr.in/moon'
