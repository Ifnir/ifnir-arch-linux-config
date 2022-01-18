#!/bin/bash

xrandr --output DP-3 --left-of eDP-1 --auto
xrandr --output DP-4 --left-of DP-3 --auto
xrandr --output DP-3 --mode 3440x1440 --auto --primary
echo "dp done for workoffice"
