#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while grep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
polybar main -c /home/aka/.config/polybar/config.ini

echo "Bars launched..."
