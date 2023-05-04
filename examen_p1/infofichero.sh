#!/bin/bash
	#exit 0 controlar que falta 1 argumento
	#exit 1, no existe el fichero

if [ -z $1 ];
then
	echo "Necesitamos 1 argumento para identificar un FICHERO"
	exit 0
	else
		#si identifica el fichero
		echo "Argumento recibido $1"
		if [ -e $1 ];
		then
			echo "El fichero $1 existe"
			
			echo "Su propietario es: "
			ls -l $1 | awk '{ print $3 }'
			
			echo "Su grupo es: "
			ls -l $1 | awk '{ print $4 }'

			echo " Los permisos que tiene son: "
			ls -l $1 | awk '{ print $1 }'

			echo " El tamanio del fichero es de: "
			ls -l $1 | awk '{ print $5 }'	
		else
			echo "El fichero $1 No existe"
			exit 1
		fi
fi
