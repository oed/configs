#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
PATH=$PATH:~/bin

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
