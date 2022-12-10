#!/usr/bin/bash

if [[ $(sudo id -u) -ne 0 ]]
then
	echo "Your not able to start docker, please log in with root user"
	exit
fi
read -p "Enter the option: " option
if [[ $option == start  ]]
then
#	if [[ $(sudo service docker status) -ne 0  ]]
#	then
		echo "Starting the docker"
		sudo service docker start 
#	else
		echo "Docker is started and running"
#	fi
elif [[ $option == stop ]]
then
	sudo service docker stop
elif [[ $option == restart ]]
then
	sudo service docker restart
else
	echo "The option is invalid"
fi
