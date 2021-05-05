#!/bin/sh

# This is a modified rewrite of the OLD version of distrotube's dmconf script.

DMEDITOR="neovide"

declare -a options=(
"Autostart"
"Alacritty"
"Bashrc"
"Bash profile"
"Bspwm"
"Conky"
"Emacs"
"Fish"
"Polybar"
"Rofi"
"Scripts"
"Sxhkd"
"Vim/Neovim"
"Xresources"
"Zshrc"
"Zshenv"
"Cancel"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -c -fn 'Noto Sans Display-15' -l 10 -h 40 -g 2 -p 'Edit config:')

cd $HOME

case "$choice" in
	"Cancel")
		echo "Program terminated." && exit 1
		;;

	"Autostart")
		$DMEDITOR .config/bspwm/autostart.sh
		;;

	"Alacritty")
		$DMEDITOR .config/alacritty/alacritty.yml
		;;

	"Bashrc")
		$DMEDITOR .bashrc
		;;

	"Bash profile")
		$DMEDITOR .bash_profile
		;;

	"Bspwm")
		$DMEDITOR .config/bspwm/bspwmrc
		;;

	"Conky")
		$DMEDITOR .conkyrc
		;;

	"Emacs")
		emacs .emacs.d/
		;;

	"Fish")
		$DMEDITOR .config/fish/config.fish
		;;

	"Polybar")
		st -e vim .config/polybar/
		;;

	"Rofi")
		$DMEDITOR .config/rofi/
		;;

	"Scripts")
		$DMEDITOR .scripts/
		;;

	"Sxhkd")
		$DMEDITOR .config/sxhkd/sxhkdrc
		;;

	"Vim/Neovim")
		$DMEDITOR .nvimrc
		;;

	"Xresources")
		$DMEDITOR .Xresources
		;;

	"Zshrc")
		$DMEDITOR .zshrc
		;;

	"Zshenv")
		$DMEDITOR .zshenv
		;;
esac
