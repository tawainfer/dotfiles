#!/bin/sh

setup_path=$(readlink -f "$0")
if [[ $setup_path != "${HOME}/dotfiles/setup.sh" ]]
then
  echo 'Move directory to the correct location.'
  exit
fi

cd $(dirname $setup_path)
cd scripts

if [ $(pgrep fcitx5 | wc -l) -ne 0 ]
then
  read -p 'Do you want to kill fcitx5? It will not work properly if fcitx5 is running. [Y/n]: ' cmd
  if [[ "$cmd" != "n" && "$cmd" != "N" ]]
  then
    killall fcitx5
  fi
fi

./package.sh
./link.sh
./atcoder.sh
./plemoljp.sh
./lightdm.sh
./keyconfig.sh

if [ ! -f ../.host_rgb ]
then
  python host_rgb.py
fi
