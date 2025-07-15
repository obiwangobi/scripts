#! /bin/bash

<<info

File name - switch_case.sh

This file is for switch case

info

echo "enter a number between 1 to 10"

read NUM

case $NUM in

	1) echo "you entered is one" ;;

	2) echo "you entered is two" ;;

	3) echo "you entered is three" ;;
	
	4) echo "you entered is four" ;;

	5) echo "you entered is five" ;;

	6) echo "you entered is six";;

	7) echo "you entered is seven" ;;

	8) echo "you entered eight" ;;

	9) echo "you entered nine" ;;

	10) echo "you entered ten" ;;

	*) echo "invalid number" ;;
	
esac



