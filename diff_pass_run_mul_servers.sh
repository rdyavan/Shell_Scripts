#!/bin/bash
<<mycom
#using for loop if we read the any line it will consider each word as each value.
for each_string in $(cat serverWithPassword.txt)
do
	echo $each_string
done


#Here we are using while loop to read the content in a file. But in loop we are using only one variable i.e. each_string. So, entire line will read as one value.
while read each_string
do
	echo $each_string
done < serverWithPassword.txt
mycom

while read IPAdress user pass cmnd
do
        echo "sshpass -p $pass ssh -o StrictHostKeyChecking=NO   $user@$IPAdress '$cmnd'"
done < serverWithPassword.txt
