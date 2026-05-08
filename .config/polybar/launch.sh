#! /bin/sh

# kill existing bars
killall -q polybar

# wait until there are fully gone
while pgrep -x polybar >/dev/null; do sleep 1; done

# start polybar
polybar top
