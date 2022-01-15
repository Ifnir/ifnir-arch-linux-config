#!/bin/bash

# how to put linux cmd into variable
pw=$(pwd)

appsname=(rofi i3 picom polybar alacritty ni)

#sudo pacman -S ttf-dejavu 
#fc-cache

#sudo pacman -S i3-gaps

#sudo pacman -S --needed base-devel
#sudo pacman -Syy
# git clone https://aur.archlinux.org/yay-git.git
# cd yay
# makepkg -si
# yay
# yay -S polybar

for name in ${appsname[@]}; do    
    if [ ! -d ~/.config/$name ]; then
	mkdir -p ~/.config/$name;
    fi
    if ! hash $name &> /dev/null;
    then
       echo "$name not installed"
    fi
done;

if [ ! -f ~/.config/rofi/config.rasi ];
then
    ln -s $pw/rofi/config.rasi ~/.config/rofi/config.rasi
fi;

if [ ! -f ~/.config/i3/config ];
then
    ln -s $pw/i3/config ~/.config/i3/config
fi;

if [ ! -f ~/.config/alacritty/alacritty.yml ];
then
    ln -s $pw/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
fi;

if [ ! -f ~/.config/polybar/config ];
then
    ln -s $pw/polybar/config ~/.config/polybar/config
    
fi;

if [ ! -f ~/.config/polybar/launch.sh ];
then
    ln -s $pw/polybar/launch.sh ~/.config/polybar/launch.sh
fi;

if [ ! -f ~/.config/picom/picom.conf ];
then
    ln -s $pw/picom/picom.conf ~/.config/picom/picom.conf
fi;
