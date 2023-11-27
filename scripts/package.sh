#!/bin/bash

install_packages() {
  local key="$1"
  package_list=($(jq -r ".$key[]" ../list/package.json))

  path='/tmp/dotfiles_packages'
  echo "${package_list[*]}" > $path
  yay -S --needed $(cat $path)
}

cd $(dirname ${BASH_SOURCE[0]})

path='/tmp/dotfiles_choice'
if [[ ! -e $path ]]
then
  echo 'invalid choice'
  exit 1
fi
choice=$(cat $path)

yay -Syu

install_packages 'minimal'
if [[ "$choice" == 'minimal' ]]
then
  exit
fi

install_packages 'normal'
if [[ "$choice" == 'normal' ]]
then
  exit
fi

install_packages 'full'
