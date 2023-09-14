#!/bin/sh

dir="${HOME}/Documents/atcoder"
mkdir -p $dir
cd $dir

mkdir work
cd work
touch 'a.cpp' 'a.py' 'Main.java'

cd $dir
zip='v1.4.zip'
if [ -e $zip ]
then
  echo 'The zip file already exists.'
else
  wget "https://github.com/atcoder/ac-library/archive/refs/tags/${zip}"
fi

unzip -o $zip
rm -rf $zip