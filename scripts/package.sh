#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

read input
if [[ "$input" != "minimal" && "$input" != "normal" && "$input" != "full" ]]
then
  echo 'invalid choice'
  exit 1
fi

yay -Syu

package_list=($(jq -r ".${input}[]" ../list/package.json))
for package in "${package_list[@]}"; do
  # echo "$package"
  yay -S --needed $package
done
