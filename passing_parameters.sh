#!/bin/bash
<<mycom
addition()
{
	sum=$((x+y))
	echo "The sum is: $sum"
}
x=5
y=1
addition
mycom
# $1, $2 are the inputs to the function
# $0 will contain the script name, so should not use $0 for input variables.
addition()
{
	x=$1
	y=$2
	sum=$((x+y))
	echo "The sum is: $sum"

}

m=2
n=10
addition $m $n
p=21
q=43
addition $p $q

