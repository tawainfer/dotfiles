#!/bin/bash

create_links() {
  local key="$1"
  link_list=($(jq -r ".$key[]" ../list/link.json))

  for path in "${link_list[@]}"; do
    bef="$(dirname "$(pwd)")/$path"
    aft="${HOME}/$path"

    rm -rfv "$aft"
    mkdir -p "$(dirname "$aft")"
    ln -fsnv "$bef" "$aft"
  done
}

cd $(dirname ${BASH_SOURCE[0]})

path='/tmp/dotfiles_choice'
if [[ ! -e $path ]]
then
  echo 'invalid choice'
  exit 1
fi
choice=$(cat $path)

create_links 'minimal'
if [[ "$choice" == "minimal" ]]
then
  exit
fi

create_links 'normal'
if [[ "$choice" == "normal" ]]
then
  exit
fi

create_links 'full'
