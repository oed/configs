####
# .xinitrc
#### 

#!/bin/sh

# Source scripts in /etc/X11/xinit/xinitrc.d/
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi


kupfer --no-splash &
unclutter &
numlockx &
compton -cbfD 8 -e 0.8 -r 25 -o 1 -l -36 -t -34 &
xrdb -merge ~/.config/xresources &
nm-applet &
xautolock -locker lockscreen -time 10 &

## gnome keyring
# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# load keyboard layout
if [ -f $HOME/.config/xmodmap ]; then
    /usr/bin/xmodmap $HOME/.config/xmodmap
fi

## fix javawindows
wmname LG3D

### Start session
## Awesome:
exec awesome

