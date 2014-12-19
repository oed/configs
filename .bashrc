#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# no duplicates in bash history
export HISTCONTROL=ignoredups

# load aliases
if [ -f "$HOME/.config/bash/aliases" ]; then
    source "$HOME/.config/bash/aliases"
fi

# load PS1 settings
if [ -f "$HOME/.config/bash/prompt" ]; then
    source "$HOME/.config/bash/prompt"
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
            PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
                ;;
            *)
                    ;;
            esac

[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
export EDITOR='vim'

