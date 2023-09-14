#!/bin/sh

setup_path=$(readlink -f "$0")
if [[ $setup_path != "${HOME}/dotfiles/setup.sh" ]]
then
  echo 'Move directory to the correct location.'
  exit
fi

cd $(dirname $setup_path)
cd scripts

./package.sh
./link.sh
./atcoder.sh

if [ ! -f ../.host_rgb ]
then
  python host_rgb.py
fi
