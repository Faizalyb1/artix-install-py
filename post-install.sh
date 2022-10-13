#!/bin/sh

printf '\033c'
sudo pacman -Sy xorg-server xorg-xinit aria2 lxappearance firefox xterm mtools dosfstools xorg-xrandr xorg-xbacklight xdg-utils xdg-user-dirs xorg-xdpyinfo pcmanfm gtk-engine-murrine amd-ucode xf86-video-amdgpu gtk2 gtk3 xf86-video-ati gparted mpv qt5ct ntp-dinit mupdf file-roller 
clear
exit
sleep 6s
xdg-user-dirs-update

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -si
echo "Done"
sleep 6s

yay -S pacseek-bin
clear
yay -S picom-arian8j2-git
echo "All Done"
sleep 2s
