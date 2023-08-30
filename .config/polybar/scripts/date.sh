#!/bin/sh

days=('Sun' 'Mon' 'Tue' 'Wed' 'Thu' 'Fri' 'Sat')
day=$(date +%w)

echo $(date +"%-m/%-d(${days[day]}) %H:%M:%S")