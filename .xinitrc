xset r rate 200 45
xset s off
xset s noblank
xset -dpms
xrandr --output eDP-1-1 --mode 1920x1080 --rate 144 --dpi 96
xwallpaper --focus ~/dotfiles/wallpapers/waterfalls.jpg &

exec bspwm 
