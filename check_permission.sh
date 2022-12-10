#!/usr/bin/bash

#[[ -x backup.sh ]] && echo "backup.sh having the execution permission." || echo "Not having the required permission."
<<com
if [[ -x backup.sh ]]
then  
	echo "backup.sh having the execution permission."
else
	echo "Not having the required permission."
fi


#for  each in backup.sh get-docker.sh

com
i=0
for each in $(ls)
do
	if [[ -x $each ]]
	then
		i=$((i+1))
		echo "$i. $each having the execution permission."
	else
		i=$((i+1))
		echo "$i. $each Not having the required permission."
	fi
done

if [[ $# -ne 1 ]]
then 
	echo "Usage: $0 <anypath>"
	exit
else

#i=0
given_path=$1
for each in $(ls $given_path)
do
	if [[ -x $each ]]
	then
	         i=$((i+1))
	         echo "$i. $each having the execution permission."
	else
	         i=$((i+1))
	         echo "$i. $each Not having the required permission."
	fi
done
fi
