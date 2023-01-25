#!/bin/bash

display()
{
	# Local variable will be usable in only that function. we can not use it as globally
	y=55
	local z=58
	echo "You have called the dispalay funtion."
	echo "The value of variable x is: $x"
	local x=65
}
x=5
display
echo "The value of variable x is: $z"
echo "The value of variable x is: $y"
echo "The value of variable x is: $x"
