#!/bin/sh

yay -Syu
yay -S --needed $(cat list/package_list)
