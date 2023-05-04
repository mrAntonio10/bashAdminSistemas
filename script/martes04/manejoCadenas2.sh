#!/bin/bash
	#Para borrar se usa el NUMERAL = #
string=abcABC123ABCabcC123

echo ${string#a*C} # borrar desde "a" hasta la primera ocurrencia de "C"
echo ${string##a*C} # borrar desde "a" hasta la ultima ocurrencia de "C"

