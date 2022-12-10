#!/usr/bin/bash

TO_MAIL="sauravc50@gmail.com"
#Data=$("df -H | grep -Ev 'dev|tmpfs'")

echo -e " The system date files storage is as shown below \n $(df -H | grep -Ev 'dev|tmpf')" | mail -s "File system utilization" $TO_MAIL

