#!/bin/bash
	#el exit 0, controlar que falta 1 argumento
	#exit 1, no existe un argumento
if [ -z $1 ];
then
	echo "Necesitamos 1 argumento para identificar un DIRECTORIO"
	exit 0
	else
		#si identifica directorio
		echo " Argumento recibido $1"
		if [ -e $1 ];
		then
			echo "El directorio $1 existe"
			echo "Cantidad de archivos que tiene"
			cantidad=`ls -l $1 | wc -l` #Cuenta la cantidad de lineas, La primera linea es TOTAL : los demas son archivo:s
			let cantidad=cantidad-1
			echo $cantidad


			echo "Cantidad de Ficheros con extension .conf"
				cantidad2=`ls -l $1/*.conf | wc -l`
				let cantidad2=cantidad2-1
				echo $cantidad2
			echo "Ficheros con extension .txt"

				cantidad3=`ls -l $1/*.txt | wc -l`
				      let cantidad2=cantidad3-1
			  echo $cantidad3

		else
			echo "No existe el directorio $1"
			exit 1
		fi
fi
