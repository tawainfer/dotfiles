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
my_blue="\[\e[38;2;90;167;230m\]"
my_gray="\[\e[38;2;153;153;153m\]"
my_white="\[\e[38;2;238;238;238m\]"
PS1="\n${my_blue}[\u] ${host_color}[\h] ${my_gray}\w\n${my_white}\$ "
