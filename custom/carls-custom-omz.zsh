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
rust_init="$HOME/.cargo/env" 
[[ -e "$rust_init" ]] && source "$rust_init"

# Homebrew Ruby
ruby_dir="/usr/local/opt/ruby/bin" && [ -e "$ruby_dir" ] && PATH="$ruby_dir:$PATH"

# Datagator
datagator_path="$HOME/Yew/datagator/bin"
[[ -d "$datagator_path" ]] && export PATH="$datagator_path:$PATH"

### ALIASES

[[ ! -z "$(type kubectl)" ]] && alias k=kubectl

dropbox_dir="$HOME/Library/CloudStorage/CloudMounter-CarlSchuyler"
[[ -d "$dropbox_dir" ]] && alias cdd="cd \"$dropbox_dir\""


alias gs='git status'
alias ll='ls -ltr'
alias llr='ls -ltr'
alias lls='ls -lSr'
alias lls='ls -lSr'
alias w='curl -s wttr.in/Superior,CO'
alias w2='curl -s v2.wttr.in/Superior,CO'
alias wmoon='curl -s wttr.in/moon'

# IntelliJ's idea spews to the console. The wrapper function is cleaner.
# idea_home="/Applications/IntelliJ IDEA.app/Contents/MacOS"
# [[ -d "$idea_home" ]] && export PATH="$idea_home:$PATH"

[[ -x "/Applications/IntelliJ IDEA.app/Contents/MacOS/idea" ]] && \
idea() { /Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea $* &> "$HOME/.IntelliJ-Idea.log" &| }

# Gdub is no more, long live gng
[[ ! -z "$(type gng)" ]] && alias gw=gng

# Handy aliases to make a filename-compatible timestamp

alias datei='TZ=America/Denver date -Idate | tr : - | pbcopy'
alias dateih='TZ=America/Denver date -Ihours | tr : - | pbcopy'
alias dateim='TZ=America/Denver date -Iminutes | tr : - | pbcopy'
alias dateis='TZ=America/Denver date -Iseconds | tr : - | pbcopy'

### WORK

JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
[[ -d "$JAVA_HOME" ]] && export JAVA_HOME
