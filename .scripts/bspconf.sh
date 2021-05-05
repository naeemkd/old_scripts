#!/bin/sh

choice="$(echo -e "Border width\nGaps\nLayout\nCancel" | dmenu -c -l 6 -h 40 -i -fn "Noto Sans Display-15" -p "Config ")"

case ${choice} in
	"Cancel")
		echo "Program terminated." && exit 1
		;;
	"Border width")
		~/.scripts/bspbord.sh
		;;
	"Layout")
		~/.scripts/bsplay.sh
		;;
	"Gaps")
		~/.scripts/bspgaps.sh
		;;
esac
