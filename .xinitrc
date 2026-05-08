export DISPLAY=:0
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=bspwm
export XAUTHORITY=$HOME/.Xauthority

systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP

xset r rate 200 45
xset s off
xset s noblank
xset -dpms
xrandr --output eDP-1-1 --mode 1920x1080 --rate 144 --dpi 96
xwallpaper --focus ~/dotfiles/wallpapers/macOS_Sonoma.jpeg &

exec bspwm 
