#!/bin/sh

cd $(dirname ${BASH_SOURCE[0]})

path="${HOME}/.pictures/desktop.png"
mkdir -p $(dirname $path)

if [ ! -e $path ]
then
  convert -size 1920x1080 "xc:##6272A4" $path
fi
