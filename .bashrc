#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/nvm/init-nvm.sh

alias ls='ls --color=auto'
alias e=${VISUAL}

K="\[\033[0;30m\]"	# black
R="\[\033[0;31m\]"	# red
G="\[\033[0;32m\]"	# green
Y="\[\033[0;33m\]"	# yellow
B="\[\033[0;34m\]"	# blue
M="\[\033[0;35m\]"	# magenta
C="\[\033[0;36m\]"	# cyan
W="\[\033[0;37m\]"	# white

NONE="\[\033[0m\]"

function git_branch() {
    git branch --no-color 2> /dev/null | grep "^\*" | cut -d ' ' -f 2
}

PS1="\h:\w ${B}\$(git_branch)${NONE}$ "
