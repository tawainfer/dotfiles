#!/bin/sh

color='5aa7e6'
symbol=󰖟

if [ $(rfkill -J list wlan | grep yes | wc -l) -ne 0 ]
then
  color='666'
else
  if [[ $(nmcli networking connectivity) == "none" ]]
  then 
    color='eee'
  fi
fi

echo "%{F#$color}$symbol"