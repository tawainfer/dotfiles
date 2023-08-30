cnt=$(cat /tmp/count_display 2> /dev/null)
display_names=($(xrandr | awk '$2=="connected" {print $1}'))

if [[ $cnt != ${#display_names[@]} ]]
then
  cnt=${#display_names[@]}
  echo $cnt > /tmp/count_display

  for display in ${display_names[@]}
  do
    xrandr --output $display --off
  done

  if [ $cnt -ge 2 ]
  then
    for display in ${display_names[@]}
    do
      echo $(echo $display | grep -v 'LVDS')
      echo $(echo $display | grep -v 'LVDS' | wc -l)
      if [[ $(echo $display | grep -v 'LVDS') ]]
      then
        xrandr --output $display --auto
        echo "activate $display"
        exit
      fi
    done
  fi

  xrandr --output ${display_names[0]} --auto
else
  echo 'no changes'
fi

# echo $display_names
# echo ${display_names[@]}
# echo ${#display_names[@]}

# if [[ cat /tmp/count_display 2> /dev/null == $(xrandr | awk '$2=="connected"' | wc -l) ]]
# then
#   echo $(xrandr | awk '$2=="connected"' | wc -l) > /tmp/count_display
  


# if [ $(xrandr | awk '$2=="connected"' | wc -l) -ge 2 ]
# then
#   xrandr --output LVDS-1 --off
#   xrandr --output HDMI-1 --auto
# else
#   xrandr --output $(xrandr | awk '$2=="connected" {print $1}') --auto
# fi