#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
