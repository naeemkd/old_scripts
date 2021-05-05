#!/bin/sh
bspc config border_width $(echo -e "0\n1\n2\n3\n4\n5\n6\n7\n36" | dmenu -c -g 2 -l 4 -h 40 -i -fn "Noto Sans Display-15" -p " Set border width (px): ")
