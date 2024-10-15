#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
alias ls='ls --color=auto'
alias grep='grep --color=auto'
export EDITOR=vis
r () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}

export PS1="\e[0;34m\u\e[1;33m@\e[0;35m\h \e[0;36m\W \$ \e[m"

shopt -s histappend

export HISTSIZE=100000
