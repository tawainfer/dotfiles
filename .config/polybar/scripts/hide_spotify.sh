#!/bin/sh

res='true'
if [[ $(cat /tmp/hide_spotify 2> /dev/null) == 'true' ]]
then
  res='false'
fi

echo $res > /tmp/hide_spotify