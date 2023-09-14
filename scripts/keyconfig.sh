#!/bin/sh

cd ../keyconfig

files=(
  "/etc/X11/xorg.conf.d/00-keyboard.conf"
)

for aft in "${files[@]}"; do
  dir=$(dirname "$aft")
  sudo mkdir -p "$dir"
  bef=$(basename "$aft")
  sudo cp -fv "$bef" "$aft"
done
