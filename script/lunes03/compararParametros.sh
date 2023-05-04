#!/bin/bash

num1=$1 #parametro 1
num2=$2 #parametro 2

	if [ $num1 -gt $num2 ];
	then
		echo "Num 1 es mayor que Num2"
	elif [ $num1 -lt $num2 ];
	then
		echo "Num 1 es menor que Num2"
	else
		echo "Num 1 es igual a Num2"
	fi



