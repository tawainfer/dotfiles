#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

file='00-keyboard.conf'
bef="../keyconfig/${file}"
aft="/etc/X11/xorg.conf.d/${file}"

echo $bef
echo $aft
echo $(dirname $aft)

sudo mkdir -p $(dirname $aft)
sudo cp -fv $bef $aft
