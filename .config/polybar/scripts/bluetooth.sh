#!/bin/sh

color='5aa7e6'
symbol=󰂯

if [ $(rfkill -J list bluetooth | grep yes | wc -l) -ne 0 ]
then
  color='666'
else
  if [ $(bluetoothctl info | grep "Connected: yes" | wc -l) -eq 0 ]
  then 
    color='eee'
  fi
fi

echo "%{F#$color}$symbol"