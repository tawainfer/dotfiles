#!/bin/sh

if [ $(ps -aux | awk {'print $11'} | grep picom | wc -l) -ne 0 ]
then
  killall picom 2> /dev/null
  polybar-msg action "#picom.hook.0"
else
  picom -b
  polybar-msg action "#picom.hook.1"
fi
