#!/bin/sh
ls /usr/share/man/man1 | find /usr/share/man/man1 -type f | shuf | awk -F '/' '/1/ {print $6}' | sed 's/.gz//g' | head -1 | xargs man -Tpdf | zathura -
