#!/bin/bash

script_path=$(readlink -f "$0")
dotfiles_path=$(dirname $(dirname $script_path))

for path in $(cat list/link_list)
do
  bef="${dotfiles_path}/$path"
  aft="${HOME}/$path"

  rm -rfv $aft
  mkdir $(dirname $aft)
  ln -fsnv "$bef" "$aft"
done
