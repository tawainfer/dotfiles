#!/bin/sh

dir="${HOME}/Documents/atcoder"
mkdir -p $dir
cd $dir

mkdir work
cd work
touch 'a.cpp' 'a.py' 'Main.java'


cd $dir
if [ -d 'ac-library' ]
then
  echo 'ac-library already exists.'
else
  git clone https://github.com/atcoder/ac-library.git
fi