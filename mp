#!/bin/bash
#================================================================
# Script Name:	mp (Menu of Project)
# By:		Timothy Negron
# Date:		05/11/2018
# Purpose:	To display a menu allowing the user to view
#		records, add records, search for records or
#		delete records.
#
#=================================================================

while [ 0 ]
do
	clear		
		#Displays the Menu
	tput cup 2 4; echo "Student Information Reporting Menu"
	tput cup 3 4; echo "=================================="
	tput cup 5 4; echo "1 - View Records"
	tput cup 6 4; echo "2 - Add New Records"
	tput cup 7 4; echo "3 - Search for Records"
	tput cup 8 4; echo "4 - Delete Records"
	tput cup 9 4; echo "5 - Quit"
	tput cup 11 4; echo "Enter your choice: "
	tput cup 11 23; read choice
	
		#Depending on the choice a script will run
	case $choice in
		[1]) ./vr
		;;
		[2]) ./ar
		;;
		[3]) ./sr
		;;
		[4]) ./dr
		;;
		[5]) clear; exit
		;;
		*) clear; tput cup 15 4; echo "Invalid choice!"
			  tput cup 17 4; echo "Press ENTER to continue..."
			  tput cup 17 32; read enter
		;;
	esac
done
