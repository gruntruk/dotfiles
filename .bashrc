eval "$(rbenv init -)"

export PATH="~/bin:$PATH"

# color settings
. ~/bin/bash_colors.sh
export CLICOLOR=1
export TERM='xterm-color'
# export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
alias ls='ls -G'
alias tree='tree -C'

# no dupes in history
export HISTCONTROL=erasedups
export HISTSIZE=1000

function __git_dirty {
	git diff --quiet HEAD &>/dev/null
	[ $? == 1 ] && echo "!"
}

PS1="\h:\w$BRIGHT_GREEN\$(__git_ps1) $RESET\$(__git_dirty) $ "

source ~/bin/git-completion.bash
