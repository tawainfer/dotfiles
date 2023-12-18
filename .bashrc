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

rgb=(255 255 255)
path="${HOME}/.host_rgb"
if [ -f $path ]
then
  rgb=($(awk '{for (i = 1; i <= NF; i++) print $i}' "$path"))
fi

host_color="\[\e[38;2;${rgb[0]};${rgb[1]};${rgb[2]}m\]"
user_color="\[\e[38;2;189;147;249m\]"
gray="\[\e[38;2;148;150;164m\]"
white="\[\e[38;2;248;248;242m\]"
PS1="\n${user_color}[\u] ${host_color}[\h] ${gray}\w\n${white}\$ "

. /opt/asdf-vm/asdf.sh
