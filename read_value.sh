#!/bin/bash
read -p "Enter a number:" a
read -p "Enter a number:" b

echo $a $b | awk '{a=$1;b=$2;print "sum="a+b}'

