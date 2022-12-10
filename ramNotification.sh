#!/usr/bin/bash

TH_L=4800
FREE_RAM=$(free -mt | grep "Total" | awk '{print $4}')
TO="dyavanapellirakesh@gmail.com"

if [[ $FREE_RAM -lt  $TH_L ]]
then
	echo -e "Server is running at low RAM size \nAvailable RAM size is: $FREE_RAM" | mail -s "Server is running at low RAM size" $TO
else
	echo "Server working properly"
fi
