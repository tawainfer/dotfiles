#!/bin/sh

script_path=$(readlink -f "$0")
if [[ $script_path != "${HOME}/dotfiles/scripts/setup.sh" ]]
then
  echo 'dotfilesディレクトリをホームディレクトリ直下に配置してください。'
  exit
fi

scripts_path=$(dirname $script_path)
cd $scripts_path

./aur.sh
./pacman.sh
./link.sh