#!/bin/bash

echo 'i3 Controler'
echo '; move primary workspace: mod+m'
echo '; run rofi: mod+d'

echo '#### wifi'
echo 'nmcli radio wifi off/on'

echo '### bluetooth'
echo 'hcitool dev'
echo 'hcitool -i hci0 scan'

echo '### bluetooth command line'
echo 'bluetoothctl'
echo 'connect XX:XX:XX:XX:XX'

echo '### Sound Control'
echo 'amixer -D pulse sset Master 30%'
echo 'alsamixer'

echo '# Change sound output'
echo "pacmd list-sinks | grep -e 'name:' -e 'index:'"
echo 'or'
echo "pacmd list-sources | grep -e 'index:' -e device.string -e 'name:' -e 'available'"
echo 'get default source output: pactl get-default-source'
echo 'set default source output: pactl set-default-source NAME'

echo '### Display'
echo 'xrandr --output DP-3 --left-of eDP-1 --auto && xrandr --output DP-4 --left-of DP-3 --auto && $xrandr --output DP-3 --primary --auto --mode 3440x1440'
