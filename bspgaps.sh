#!/bin/sh
bspc config window_gap $(echo -e "0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n36" | dmenu -c -g 2 -l 6 -h 40 -i -fn "Noto Sans Display-15" -p " Set gaps (px): ")
