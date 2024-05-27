# set +e

# TODO: go to https://stackoverflow.com/questions/68605927/how-can-i-change-path-variable-in-zsh an look for 'typeset -aU path'
[ -f $HOME/.composer/vendor/bin ] && PATH=$PATH:$HOME/.composer/vendor/bin

[ -d "$HOME/bin" ] && PATH="$PATH:$HOME/bin"

log2json_dir="$HOME/git-log2json" && [ -d "$log2json_dir" ] && PATH="$PATH:$log2json_dir"

# Activate direnv
[ ! "$(type direnv)" ] && eval "$(direnv hook zsh)"

# Activate thefuck
[ ! "$(type fuck)" ] && eval "$(thefuck --alias)" && alias f=fuck

# Rust
rust_init="$HOME/.cargo/env" [ -e "$rust_init" ] && source "$rust_init"

# Homebrew Ruby
ruby_dir="/usr/local/opt/ruby/bin" && [ -e "$ruby_dir" ] && PATH="$ruby_dir:$PATH"

# Datagator
DATAGATOR_PATH=$HOME/Yes/datagator/bin && [ -x "$DATAGATOR_PATH/dg" ] && PATH="$PATH:$DATAGATOR_PATH"


### ALIASES


idea_dir="/Applications/IntelliJ IDEA.app/Contents/MacOS" && [ -d "$idea_dir" ] && PATH="$PATH:$idea_dir"
idea_cmd="$(which idea)"
idea_log="$HOME/.idea.console.log"
[ ! -z "$idea_cmd" ] && \
  alias idea="echo 'idea logging to $idea_log' ; (\"$idea_cmd\" 2>&1) >> \"$idea_log\" &!"

[ ! -z "$(type kubectl)" ] && alias k=kubectl
dropbox_dir="$HOME/Library/CloudStorage/CloudMounter-CarlSchuyler" && [ -d "$dropbox_dir" ] && alias cdd="cd \"$dropbox_dir\""
alias gs='git status'
alias ll='ls -ltr'
alias llr='ls -ltr'
alias lls='ls -lSr'
alias lls='ls -lSr'
alias w='curl -s wttr.in/Superior,CO'
alias w2='curl -s v2.wttr.in/Superior,CO'
alias wmoon='curl -s wttr.in/moon'

export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

export PATH="/Users/cschuyle/Yew/datagator/bin:$PATH"


# Gdub is no more, long live gng
[ ! -z "$(type gng)" ] && alias gw=gng

