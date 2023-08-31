#!/bin/bash

for path in $(cat link_list.txt)
do
  bef="../$path"
  aft="${HOME}/$path"

  mkdir $(dirname $aft)
  ln -fsn ../$path ${HOME}/$path
done