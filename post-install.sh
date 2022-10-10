#!/bin/bash

printf '\033c'
sudo pacman -Sy xorg-server xorg-xinit lxappearance firefox xterm mtools dosfstools xorg-xrandr xorg-xbacklight xdg-utils xdg-user-dirs-gtk xorg-xdpyinfo pcmanfm gtk-engine-murrine amd-ucode xf86-video-amdgpu xf86-video-ati gparted mpv picom qt5ct ntp-dinit evince file-roller ttf-hack ttf-joypixels gtk2 gtk3 ttf-nerd-fonts-symbols-2048-em ttf-nerd-fonts-symbols-common awesome-terminal-fonts ttf-jetbrains-mono
clear
exit
sleep 6s

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -si
echo "Done"
sleep 6s

yay -S pacseek-bin
echo "All Done"
sleep 2s
