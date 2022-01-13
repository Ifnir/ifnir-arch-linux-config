#!/bin/bash

appsname=(rofi i3 picom polybar alacritty);

for name in ${appsname[@]}; do    
    if [ ! -d ~/.config/$name ]; then
	    mkdir -p ~/.config/$name;
    fi
done

