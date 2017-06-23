#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

xrdb -merge ~/.Xresources

# Remove if not using VirtualBox.
/usr/bin/VBoxClient-all

xsetroot -cursor_name left_ptr
hsetroot -solid "#008080"
unclutter -idle 3 -grab -root &

sxhkd &
exec bspwm
