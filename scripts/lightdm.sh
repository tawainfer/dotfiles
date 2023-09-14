#!/bin/sh

cd ../lightdm

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
