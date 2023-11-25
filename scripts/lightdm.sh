#!/bin/sh

cd $(dirname ${BASH_SOURCE[0]})
mkdir -p ../.pictures

conf_path='../lightdm/lightdm-gtk-greeter.conf'
if [ ! -e $conf_path ]
then
  echo '"lightdm-gtk-greeter.conf" does not exist!'
  exit
fi
aft_conf_path="/etc/lightdm/$(basename $conf_path)"

icon_path='../.pictures/dm_icon.png'
if [ ! -e $icon_path ]
then
  convert -size 512x512 "xc:#abc" $icon_path
fi
aft_icon_path="/usr/share/dotfiles/pictures/$(basename $icon_path)"

wallpaper_path='../.pictures/dm_wallpaper.png'
if [ ! -e $wallpaper_path ]
then
  convert -size 1920x1080 "xc:#333" $wallpaper_path
fi
aft_wallpaper_path="/usr/share/dotfiles/pictures/$(basename $wallpaper_path)"

sudo mkdir -p $(dirname "$aft_conf_path")
sudo mkdir -p $(dirname "$aft_icon_path")
sudo mkdir -p $(dirname "$aft_wallpaper_path")

sudo cp -fv "$conf_path" "$aft_conf_path"
sudo cp -fv "$icon_path" "$aft_icon_path"
sudo cp -fv "$wallpaper_path" "$aft_wallpaper_path"

exit

files=(
  "/etc/lightdm/lightdm-gtk-greeter.conf"
  "/usr/share/pictures/wallpaper/arch_wallpaper.png"
  "/usr/share/pictures/icon/my_cat.jpg"
)

for aft in "${files[@]}"; do
  dir=$(dirname "$aft")
  sudo mkdir -p "$dir"
  bef=$(basename "$aft")
  sudo cp -fv "$bef" "$aft"
done
