#!/usr/bin/bash
<<com
cntr=0
for ((;;))
do
	cntr=$((cntr+1))
	echo "$cntr This is infi loop"
	#sleep 1
	if [[ $cntr -eq 10 ]]
	then
		break
	fi

done
com

if [[ $(id -u) -ne 0 ]]
then 
	echo "please run the script with root user or sudo previlages"
else

	if which vim &> /dev/null
	then
		echo " Already installed"
	else
		yum4 install vim -y	
	fi
	exit
fi
