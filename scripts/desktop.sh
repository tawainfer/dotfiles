#!/bin/sh

cd $(dirname ${BASH_SOURCE[0]})
mkdir -p ../.pictures

path='../.pictures/desktop.png'
if [ ! -e $path ]
then
  convert -size 1920x1080 "xc:#abc" $path
fi
