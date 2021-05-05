#!/bin/sh

notify-send "WARNING" "This script is not finished, expect bugs." -i dialog-error

choice="$(echo -e "tall\nwide\nreverse-tall\nreverse-wide\ngrid\nreverse-grid\neven\nfullscreen\nreset\nCancel" | dmenu -c -g 2 -l 6 -h 40 -i -fn "Noto Sans Display-15" -p "Layout ")"

case ${choice} in
	"tall")
		bsp-layout set tall
		;;
	"wide")
		bsp-layout set wide
		;;
	"reverse-tall")
		bsp-layout set rtall
		;;
	"reverse-wide")
		bsp-layout set rwide
		;;
	"grid")
		bsp-layout set grid
		;;
	"reverse-grid")
		bsp-layout set rgrid
		;;
	"even")
		bsp-layout set even
		;;
	"reset")
		bsp-layout remove && bspc wm -r
		;;
	"Cancel")
		echo "Program terminated." && exit 1
		;;
esac
