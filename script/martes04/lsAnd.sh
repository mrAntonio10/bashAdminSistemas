#!/bin/bash

if ( ls /bin/ls && ls /bin/ll ) >/dev/null 2>&1
	then
		echo "Existe el fichero en LS y LL"
	else
		echo "falta uno de los ficheros"

fi

