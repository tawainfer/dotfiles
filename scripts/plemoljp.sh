#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

if [ $(fc-list | grep PlemolJPConsole_NF | wc -l) -ne 0 ]
then
  echo 'PlemolJP is already installed.'
  exit
fi

ver='v1.6.0'
dir="PlemolJP_NF_${ver}"
wget "https://github.com/yuru7/PlemolJP/releases/download/${ver}/${dir}.zip"

unzip "${dir}.zip"
rm -rf "${dir}.zip"

cd $dir
bef='PlemolJPConsole_NF'
aft="${HOME}/.local/share/fonts"
mkdir -p $aft
mv -v $bef $aft

cd ..
rm -rf $dir
