#!/bin/sh

color='BD93F9'
symbol=󰖟

if [ $(rfkill -J list wlan | grep yes | wc -l) -ne 0 ]
then
  color='666666'
else
  if [[ $(nmcli networking connectivity) == "none" ]]
  then 
    color='F8F8F2'
  fi
fi

echo "%{F#$color}$symbol"