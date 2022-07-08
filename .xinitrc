#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

numlockx &
xscreensaver -no-splash&

# disable the PC speaker
xset -b

# using compton now instead of xcompmgr
# xcompmgr -c &
compton -b

exec openbox-session
