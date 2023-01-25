#!/bin/bash
#How to use while IFS with different examples
<<mycom
while IFS=',' read f1 f2 f3 f4
do
	echo "$f2"
	echo "------------"

done < serverList.txt
mycom
#using below code we are not taking the 3rd line from the text file i.e. NR!=3
cat serverList.txt | awk 'NR!=3 {print}' | while IFS=',' read f1 f2 f3 f4
do
        echo "$f2"
        echo "------------"
done
