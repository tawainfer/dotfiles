#!/bin/sh

cd $(dirname ${BASH_SOURCE[0]})

path="${HOME}/.pictures/desktop.png"
mkdir -p $(dirname $path)

if [ ! -e $path ]
then
  convert -size 1920x1080 "xc:#F8F8F2" $path
fi
