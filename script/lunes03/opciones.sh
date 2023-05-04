#! /usr/bin/bash

OPCIONES="Hola Salir Q?"
#Aqui tenemos dos cosas, una variable OPT texto y un REPLY que es un id del select
select opt in $OPCIONES;
do
	echo texto: $opt y reply: $REPLY
	if [ $opt = "Salir" ];
	then
		echo done
		exit

	elif [ $opt = "Hola" ];
	then
		echo Hola mundo
	else
		clear
		echo opcion erronea
	
	fi
done

