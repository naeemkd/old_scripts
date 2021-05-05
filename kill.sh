#!/bin/sh

CHOICE="$(echo -e 'Bspwm\nPolybar\nSxhkd\nCancel' | dmenu -p ' Choose program to restart: ' -c -i -l 90 -h 40 -fn 'Noto Sans Display-15')"

case "$CHOICE" in
	Cancel)
		exit 1
		;;
	Bspwm)
		bspc wm -r
		;;
	Polybar)
		pkill -x -USR1 polybar
		;;
	Sxhkd)
		pkill -x -USR1 sxhkd
		;;
esac
