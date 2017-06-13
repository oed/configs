#!/bin/sh

# Source scripts in /etc/X11/xinit/xinitrc.d/
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#kupfer --no-splash &
sxhkd &
unclutter &
#numlockx &
compton -e 0.8 -D 0 -o 0 &
xrdb -merge ~/.config/xresources &
nm-applet &
blueman-applet &
xautolock -locker slock -time 10 &
redshift -l 57.747778:11.909180 -t 5500K:2500K &

# load keyboard layout
if [ -s ~/.config/xmodmap ]; then
    xmodmap ~/.config/xmodmap
fi

# gnome keyring
# Start a D-Bus session
#source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# fix javawindows
wmname LG3D

# Start session
exec awesome
#exec bspwm

