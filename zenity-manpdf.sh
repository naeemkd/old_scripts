#!/bin/sh
chosenpage=$(zenity --entry --text "Choose a man page:")

man -k $chosenpage > /dev/null

if [ $? = 0 ]
then man -Tpdf $chosenpage | zathura -
else echo "Man page not found, exiting" && exit 1
fi
