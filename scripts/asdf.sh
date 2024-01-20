#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

. /opt/asdf-vm/asdf.sh
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
