#!/bin/sh

printf "Enter your name:\n> "
read subm_user

shopt -s nocasematch

case "$subm_user" in
	"")
		printf "No name specified.\n" 1>&2
		exit 2 ;;
	mahir|silver)
		printf "\e[1;31mGo away\n" 1>&2
		exit 1 ;;
	*)
		if dialog --yesno "Are you sure you would like to continue?" 10 50; then 
			clear
			timeout 10 yes "SILVER ALWAYS GETS PWNED"
		else 
				clear
				printf "you scared nub?\n" 1>&2
				exit 1
		fi ;;
esac
