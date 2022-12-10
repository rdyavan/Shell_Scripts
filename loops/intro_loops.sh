#!/usr/bin/bash
<<com
for each in 1 2 3 4 5
do
	echo "Printing"
done
com


for ((i=1;i<=5;i++))
do
	echo $i
done
