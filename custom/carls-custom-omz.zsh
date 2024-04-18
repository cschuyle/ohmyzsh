set +e

alias ll='ls -ltr'
alias lls='ls -lSr'

if [[ ! -z "$(type kubectl)" ]]; then
  alias k=kubectl
fi

alias gs='git status'

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

# TODO: go to https://stackoverflow.com/questions/68605927/how-can-i-change-path-variable-in-zsh an look for ‘typeset -aU path’
export PATH="$PATH:~/.composer/vendor/bin"

alias llr='ls -ltr'
alias lls='ls -lSr'

alias cdd='dropbox_dir="$HOME/Library/CloudStorage/CloudMounter-CarlSchuyler"; cd "$dropbox_dir"'

export PATH="$PATH:/Applications/IntelliJ IDEA.app/Contents/MacOS"

if [[ ! -z "$(type gng)" ]]; then
  alias gw=gng
fi

#alias idea='(/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea 2>&1) >> ~/.idea.console.log &'

# Rust
if [[ -e "$HOME/.cargo/env" ]]; then
	. "$HOME/.cargo/env"
fi


# Homebrew Ruby
if [[ -e "/usr/local/opt/ruby/bin" ]]; then
	export PATH="/usr/local/opt/ruby/bin:$PATH"
fi
