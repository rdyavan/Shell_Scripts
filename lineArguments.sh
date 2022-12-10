#!/usr/bin/env bash

if [[ $(sudo id -u) -ne 0 ]]
then
	ehco "Please log in with root user."
       	exit
fi

if [[ $# -ne 2 ]]
then
	echo "please follow the below"
	echo " $0 <serviceName> <action>"
	exit
fi
serviceName=$1
action=$2

#read -p "Enter the service name: " serviceName
#read -p "Enter the action type $serviceName : " action

sudo service ${serviceName} ${action}

