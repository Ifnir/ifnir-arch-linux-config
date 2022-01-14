#!/bin/bash

appsname=(rofi i3 picom polybar)

for name in ${appsname[@]}; do    
    if [ ! -d ~/.config/$name ]; then
	mkdir -p ~/.config/$name;
    fi
done;

if [ ! -f ~/.config/rofi/config.rasi ];
then
    ln -s $(pwd)/rofi/config.rasi ~/.config/rofi/config.rasi
fi;

