#!/bin/sh

printf '\033c'
sudo pacman -S pulseaudio-alsa pulseaudio pavucontrol alsa-utils gnome-screenshot
echo "DONE"
clear
