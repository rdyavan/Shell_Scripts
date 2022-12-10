#!/usr/bin/bash
<<com
cntr=1
for each_file in $(ls)
do
	echo "For loop starting."	
	if [[ cntr -eq 1 ]]
	then
		echo $each_file
		break
	fi
done
echo "For loop ended. "
for each in $(seq 1 10)
do
        if [[ each -ne 5 ]]
        then
        echo $each
	fi
done
echo "For loop ended. "
com

for each in $(seq 1 10)
do
	if [[ each -eq 5 ]]
	then
		continue
	fi
	echo $each
done
echo "For loop ended. "

