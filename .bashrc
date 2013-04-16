eval "$(rbenv init -)"

platform=`uname`

export PATH="~/bin:$PATH"
export PATH="~/Library/Developer/SDKs/flex_sdk_3.6/bin:$PATH"

# color settings
export CLICOLOR=1
export TERM='xterm-256color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export GIT_EDITOR="vim"

alias ls='ls -G --color'
alias ll='ls -lahG'
alias tree='tree -C'
alias be='bundle exec'
alias r='be rails'
alias less='less -r' # color support

if [[ $platform == 'Darwin' ]]; then
  alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
fi

# no dupes in history
export HISTCONTROL=erasedups
export HISTSIZE=1000
