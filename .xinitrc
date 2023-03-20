# PATH
PATH="$PATH:/$HOME/.local/bin"
PATH="$PATH:/$HOME/.local/bin/statusbar"

# Wallpaper
feh --bg-fill ~/Pics/wallpapers/C55La9V.jpg &

# Hides cursor after 3 seconds of idling
unclutter -idle 3 &

# Xresources
xrdb ~/.Xresources &

# Stop screen from going blank
xset s off
xset -dpms 
xset s noblank

# Faster key repeat and delay
xset r rate 210 40

# Scroll wheel
imwheel -b 45

# Display
autorandr -l dual

# Light filter
redshift -l 51.924419:4.477733 &

# Fix for java applications missbehaving
wmname LG3D

# Compositor
picom -b

# Notifications
dunst &

# ENV variables
export EDITOR="nvim"
export BROWSER="brave-bin"
export TERMINAL="alacritty"

# Start dwm w/ dbus and logs if errors occur
exec dbus-launch --sh-syntax --exit-with-session dwm > ~/.dwm.log
