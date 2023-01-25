#!/bin/bash

#Script for how to return a variable from function using return
#this we can only use where we are returning integers.
# if we are returning the string then we can not use this method
fn_return()
{
	x=55
	return $x
}

fn_return

y=$?

echo "The value of x is: $y"
