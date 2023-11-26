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

read input
if [[ "$input" != "minimal" && "$input" != "normal" && "$input" != "full" ]]
then
  echo 'invalid choice'
  exit 1
fi

create_links 'minimal'
if [[ "$input" == "minimal" ]]
then
  exit
fi

create_links 'normal'
if [[ "$input" == "normal" ]]
then
  exit
fi

create_links 'full'
