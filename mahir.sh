#!/bin/sh

printf "Enter your name:\n> "
read subm_user

shopt -s nocasematch

case "$subm_user" in
	"")
		echo "No name specified." && exit 2 ;;
	mahir|silver)
		printf "\e[1;31mGo away\n" && exit 1 ;;
	*)
		if dialog --yesno "Are you sure you would like to continue?" 10 50
			then clear && printf "Silver's real name is \e[1;1mMahir\n"
			else clear && echo "you scared nub?" && exit 1
		fi ;;
esac
