#!/bin/bash

printf '\033c'
sudo pacman -Sy xorg-server xorg-xinit lxappearance firefox xfce4-terminal xterm mtools dosfstools xorg-xrandr xorg-xbacklight xdg-utils xdg-user-dirs-gtk xorg-xdpyinfo pcmanfm gtk-engine-murrine libgda amd-ucode xf86-video-amdgpu xf86-video-ati gparted mpv picom qt5ct
clear
exit
sleep 6s

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -si
echo "Done"
sleep 6s

yay -S pacseek-bin
