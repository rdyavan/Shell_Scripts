#!/usr/bin/bash
<<mycom
for cmd in date uptime "free -m"
do
	echo "Running the $cmd on the server."
	echo "sshpass -f pass ssh -o automation@132.12.123.23 "$cmd""
	
done
mycom

for ser in $(cat servList.txt)
do
	echo "Executing the each command on $ser"
	echo "--------------------------------------------------"
	for cmd in date uptime "free -m"
	do
        	echo "Running the $cmd on the $ser."
        	echo "sshpass -f pass ssh -o automation@$ser $cmd"
	done
	echo "======================================================="
done


#for ser in $(cat servList.txt)
#do
#	echo $ser
#done
