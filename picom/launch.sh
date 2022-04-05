#!/bin/bash

killall -q picom

while grep -u $UID -x picom >/dev/null; do sleep 1; done

picom -bcCGf --active-opacity 0.9 -i 0.7 -e 0.8 --no-fading-openclose --opacity-rule "100:name *= 'Firefox'" --opacity-rule "100:name *= 'rofi'" --opacity-rule "100:name *= 'Google Chrome'" 
