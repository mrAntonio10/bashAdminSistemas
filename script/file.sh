#! /usr/bin/bash

FILE=~/.bashrc
if [ -f $FILE ];
	then
		echo el fichero $FILE existe
else
	echo El fichero $FILE no existe
fi

