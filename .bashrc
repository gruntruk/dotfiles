eval "$(rbenv init -)"

export PATH="~/bin:$PATH"
export PATH="~/Library/Developer/SDKs/flex_sdk_3.6/bin:$PATH"

# color settings
. ~/bin/bash_colors.sh
export CLICOLOR=1
export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

alias ls='ls -G'
alias ll='ls -lahG'
alias tree='tree -C'
alias r='bundle exec rails'
alias less='less -r' # color support

# no dupes in history
export HISTCONTROL=erasedups
export HISTSIZE=1000

function __git_dirty {
	git diff --quiet HEAD &>/dev/null
	[ $? == 1 ] && echo "!"
}

function __rbenv_current {
	rbenv version | cut -d ' ' -f 1
}

# PS1="$BRIGHT_RED$(__rbenv_current)$NONE \h:\w$BRIGHT_GREEN\$(__git_ps1) $NONE\$(__git_dirty) $ "
PS1="$(__rbenv_current) \h:\w\$(__git_ps1) \$(__git_dirty) $ "

source ~/bin/git-completion.bash
