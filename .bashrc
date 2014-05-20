#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

PS1="${C}\u${NONE}@${C}\h${NONE}:\w\n> "
