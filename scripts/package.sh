#!/bin/bash

install_packages() {
  local key="$1"
  package_list=($(jq -r ".$key[]" ../list/package.json))
  yay -S --needed $package_list
}

cd $(dirname ${BASH_SOURCE[0]})

read input
if [[ "$input" != "minimal" && "$input" != "normal" && "$input" != "full" ]]
then
  echo 'invalid choice'
  exit 1
fi

yay -Syu

install_packages 'minimal'
if [[ "$input" == "minimal" ]]
then
  exit
fi

install_packages 'normal'
if [[ "$input" == "normal" ]]
then
  exit
fi

install_packages 'full'
