#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
shopt -s histappend

[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

alias ls='ls --color=auto'
alias e="${VISUAL} -n"

eval "$(dircolors ~/dotfiles/dircolors.ansi-light)"

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
