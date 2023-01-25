#!/bin/bash
# About loops difference b/w while and for loop and as well as how to use in different ways
<<mycom
# For running the for loop at infinity times.
for (( ;; ))
do
	echo "Ok."
	echo "-------"
done
mycom
<<mycom1
#TO run the while loop at infinity number of times. we can replace 'true' with ':' or any command like 'date'.
while date &> /dev/null
do
	echo "ok."
	echo "------"
done


while [[ 4 -gt 1 ]]
do
	echo "something is printing"
	echo "--------"
done


#Printing 1 to 10 number using while loop
startNum=0
while [[ startNum -le 10 ]]
do
	echo "The line No. is $startNum"
	echo "----------------------------"
	((startNum++))
done
#mycom1

cat serverWithPassword.txt | while read line
do 
	echo "$line"
	echo "-------------------------------------------------------------"

done

mycom1


ls -lrt | while read content
do
	echo "$content"
	echo "-------------------------------------------"

done
