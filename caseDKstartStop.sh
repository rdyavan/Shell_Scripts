#!/usr/bin/bash

if [[ $(id -u) -ne 0 ]]
then
	echo " please log in with sudo user only"
	exit
fi

read -p "Enter the option:" option

case $option in
	"start") 
		sudo service docker start
		;;
	"stop")
		sudo service docker stop
		;;
	"restart")
		sudo service dokcer restart
		;;
	"status")
		sudo service docker status
		;;
	*)
		echo "Invalid Option"
		;;
esac
	
	
