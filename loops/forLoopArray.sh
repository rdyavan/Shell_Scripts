#!/usr/bin/bash

myservices=(docker nginx)
for each in ${myservices[@]}
do
	service $each status 1>/dev/null 2>/dev/null 
	if [[ $? -ne 0 ]] 
	then	
		echo "Sending mail bcz service is not running"
		/etc/init.d/sendmail reload
		echo " The Service $each is not running on $(hostname)." | /usr/bin/mail -s "status of $each" "dyavanapellirakesh@gmail.com"
	fi

done
