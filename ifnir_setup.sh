#!/bin/bash
pw=$(pwd)

appsname=(rofi i3 picom polybar)

for name in ${appsname[@]}; do    
    if [ ! -d ~/.config/$name ]; then
	mkdir -p ~/.config/$name;
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

if [ ! -f ~/.config/polybar/config ] && [ ! -f ~/.config/polybar/launch.sh];
then
    ln -s $pw/polybar/config ~/.config/polybar/config
    ln -s $pw/polybar/launch.sh ~/.config/polubar/launch.sh
fi;

