#!/bin/bash
	#Para borrar se usa el NUMERAL = #
string=abcABC123ABCabcC123

echo ${string/abc/ZXC} # reemplaza la primera ocurrencia de "abc"
echo ${string//abc/ZXC} # reemplaza todas las ocurrencias de "abc"

