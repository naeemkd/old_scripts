#!/bin/sh
eval "$(xdotool getmouselocation --shell)"

cps=$(zenity --entry --text "Enter repeat rate in ms:")

if [ $? != 0 ]
then exit 1
fi

button=$(zenity --entry --text "Choose mouse button to use. 1 = left, 2 = middle, 3 = right. Default is 1.")

if [ "$button" = "" ]
then button=1
fi

COUNTER=1
COUNTEND=100000

echo "Selected $cps repeat rate, which is $(gnome-calculator -s 1000/"$cps") clicks per second, using button $button. Press Ctrl+C to cancel."
echo

printf "\e[1;31mSTARTING IN 3
"
sleep 1
printf "\e[1;31m2
"
sleep 1
printf "\e[1;31m1
"
echo
sleep 1

while [ $COUNTER -lt $COUNTEND ]; do
  xdotool click 1
  eval "$(xdotool getmouselocation --shell)"
  sleep 0.01s
#  let COUNTER=COUNTER+1 # shellcheck says let is undefined in posix sh
  COUNTER=$((COUNTER+1))
  xdotool click --delay "$cps" --repeat 1000 $button
done
