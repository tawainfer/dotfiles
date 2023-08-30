#!/bin/bash

if [ $(playerctl metadata 2> /dev/null | grep spotify | wc -l) -ne 0 ]
then
  title=$(playerctl metadata title 2> /dev/null)
  artist=$(playerctl metadata artist 2> /dev/null)

  if [[ $(cat /tmp/hide_spotify 2> /dev/null) == 'true' ]]
  then
    title=$(echo $title | sed 's/./\X/g')
    artist=$(echo $artist | sed 's/./\X/g')
  fi

  echo "  $title / $artist"
else
  echo 'NO MUSIC, NO LIFE!!'
fi