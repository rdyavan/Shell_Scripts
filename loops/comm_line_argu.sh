#!/usr/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Please use as mentined below"
        echo "$0 com1 com2"
else

	for word in $@
	do
		echo $word
	done

fi
