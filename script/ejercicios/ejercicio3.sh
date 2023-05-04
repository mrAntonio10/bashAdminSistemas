#!/bin/bash

#solicitar dos nombres de ficheros por PARAMETROS
	#recomiendo usar de parametro el fichero "copiaETC.sh"
echo $#
if [ $# -lt 2 ];
then
	echo "Necesitamos 2 parametros"

else
	if [[ -e $1 && -e $2 ]];
	then
		echo "todo ok, ficheros:"
		ls -l $1
		ls -l $2
		echo "Solo los permisos"
		ls -l $1 | awk '{ print $1 }'
		ls -l $2 | awk '{ print $1 }'
	else
		echo "Revisar, los ficheros no coinciden"
	
	fi
fi
