#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\n \[\033[0;1;31m\]\[\033[30;41m\]\u @ \h\[\033[0;1;31m\]\[\033[0m\] \[\033[0;1;31m\]\[\033[30;41m\]\W\[\033[0;1;31m\]   \[\033[0m\] '

alias cmatrix='cmatrix -C red'
fastfetch
