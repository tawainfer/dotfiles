#!/bin/sh

color='BD93F9'
symbol=󰂯

if [ $(rfkill -J list bluetooth | grep yes | wc -l) -ne 0 ]
then
  color='44475A'
else
  if [ $(bluetoothctl info | grep "Connected: yes" | wc -l) -eq 0 ]
  then 
    color='F8F8F2'
  fi
fi

echo "%{F#$color}$symbol"