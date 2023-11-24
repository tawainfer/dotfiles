#!/bin/sh

color='5aa7e6'
battery=$(acpi -b | grep -v 'rate information unavailable' | grep -m 1 -oE '[1-9][0-9]*')
patterns=('󰂎' '󰁺' '󰁻' '󰁼' '󰁽' '󰁾' '󰁿' '󰂀' '󰂁' '󰂂' '󰁹')

i=$(( $battery / 10 ))
pattern=${patterns[$i]}

echo "%{F#${color}}${pattern} %{F#eee}${battery}%"