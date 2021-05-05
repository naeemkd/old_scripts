#!/bin/sh

## First check if wget (a program that downloads files from the internet) is installed. If it isn't, complain about it.
#[ -f /usr/bin/wget ] || echo "wget is not installed! Please install it."

## This is longer but it uses a proper error code instead of just complaining and then returning exit code 0 (which means success).
if [ ! -f /usr/bin/wget ]; then echo "wget is not installed! Please install it." && exit 1; fi

## Now use it to download the file and save it in the system temporary directory.
wget "https://th.bing.com/th/id/R2a25b595eeab9d93bf11a81ae4e3afd3?rik=l2i8sl44rys5Nw&riu=http%3a%2f%2fwww.zastavki.com%2fpictures%2foriginals%2f2014%2fAnimals_Penguins_in_the_Arctic_082032_.jpg&ehk=fg4qGWByBQ6JzQFc%2ftAzcWT5AUwyULkiwodJnyv66mQ%3d&risl=&pid=ImgRaw" -O /tmp/wg-im

## Then open *a lot* of mpv windows. mpv is a video player, but it can also view images, and is very popular. The "--keep-open" option is used so that it does not close after the "video" is finished.
while true; do mpv --keep-open=yes /tmp/wg-im; done
