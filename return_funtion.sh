#!/bin/bash
#return variable using echo command.
fn_return()
{
	local x=5
	echo $x
}
# the below syntax we can use when we have echo in function else we can not use below sytax

y=$(fn_return)

echo "The value of x is : $y"



