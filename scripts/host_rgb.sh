#/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

path="${HOME}/.host_rgb"
if [ ! -e $path ]
then
  echo '80 250 123' > $path
  echo 'create ".host_rgb" at home directory'
fi
