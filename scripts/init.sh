#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

if [ $(pgrep fcitx5 | wc -l) -ne 0 ]
then
  read -p 'Do you want to kill fcitx5? It will not work properly if fcitx5 is running. [y/N]: ' cmd
  if [[ "$cmd" == "y" || "$cmd" == "Y" ]]
  then
    killall fcitx5
  fi
fi

yay -S --needed jq