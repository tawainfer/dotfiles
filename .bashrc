#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -A'
alias grep='grep --color=auto'
alias clip='xclip -selection c'
alias nv='nvim'
alias vn='nvim'

MY_COLOR="\[\e[38;2;252;109;204m\]"
MY_GRAY="\[\e[38;2;128;128;128m\]"
MY_WHITE="\[\e[38;2;238;238;238m\]"
PS1="\n${MY_COLOR}\u@\h ${MY_GRAY}\w\n${MY_WHITE}\$ "
