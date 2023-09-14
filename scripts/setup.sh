#!/bin/sh

script_path=$(readlink -f "$0")
if [[ $script_path != "${HOME}/dotfiles/scripts/setup.sh" ]]
then
  echo 'Move directory to the correct location.'
  exit
fi

scripts_path=$(dirname $script_path)
cd $scripts_path

./aur.sh
./pacman.sh
./link.sh
./atcoder.sh

if [ ! -f ../.host_rgb ]
then
  python host_rgb.py
fi
