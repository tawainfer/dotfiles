#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

conf_path='../lightdm/lightdm-gtk-greeter.conf'
if [ ! -e $conf_path ]
then
  echo '"lightdm-gtk-greeter.conf" does not exist!'
  exit
fi
aft_conf_path="/etc/lightdm/$(basename $conf_path)"

icon_path="${HOME}/.pictures/dm_icon.png"
mkdir -p $(dirname $icon_path)

if [ ! -e $icon_path ]
then
  convert -size 512x512 "xc:#F8F8F2" $icon_path
fi
aft_icon_path="/usr/share/dotfiles/pictures/$(basename $icon_path)"

wallpaper_path="${HOME}/.pictures/dm_wallpaper.png"
mkdir -p $(dirname $icon_path)

if [ ! -e $wallpaper_path ]
then
  convert -size 1920x1080 "xc:#6272A4" $wallpaper_path
fi
aft_wallpaper_path="/usr/share/dotfiles/pictures/$(basename $wallpaper_path)"

sudo mkdir -p $(dirname "$aft_conf_path")
sudo mkdir -p $(dirname "$aft_icon_path")
sudo mkdir -p $(dirname "$aft_wallpaper_path")

sudo cp -fv "$conf_path" "$aft_conf_path"
sudo cp -fv "$icon_path" "$aft_icon_path"
sudo cp -fv "$wallpaper_path" "$aft_wallpaper_path"
