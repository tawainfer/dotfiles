#!/bin/sh

color='5aa7e6'
symbol=󰁹
battery=$(acpi -b | grep -v 'rate information unavailable' | grep -m 1 -oE '[1-9][0-9]*%')

if [ -z "$battery" ]
then
  color='eee'
fi

echo "%{F#$color}$symbol %{F#fff}$battery"