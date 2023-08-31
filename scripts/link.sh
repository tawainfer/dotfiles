#!/bin/bash

script_path=$(readlink -f "$0")
if [[ $script_path != "${HOME}/dotfiles/scripts/link.sh" ]]
then
  echo 'Clone the directory to the correct path.'
  exit
fi

dotfiles_path=$(dirname $(dirname $script_path))
cd $dotfiles_path

for path in $(cat ${dotfiles_path}/link_list.txt)
do
  bef="${dotfiles_path}/$path"
  aft="${HOME}/$path"

  rm -rfv $aft
  mkdir $(dirname $aft)
  ln -fsnv "$bef" "$aft"
  echo '\n'
done
