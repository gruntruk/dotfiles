eval "$(rbenv init -)"

export PATH="~/bin:$PATH"
export PATH="~/Library/Developer/SDKs/flex_sdk_3.6/bin:$PATH"

# color settings
export CLICOLOR=1
export TERM='xterm-256color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

alias ls='ls -G'
alias ll='ls -lahG'
alias tree='tree -C'
alias be='bundle exec'
alias r='be rails'
alias less='less -r' # color support
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# no dupes in history
export HISTCONTROL=erasedups
export HISTSIZE=1000
