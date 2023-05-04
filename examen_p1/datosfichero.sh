#!/bin/bash
	#leer
read -p "Ingrese el nombre de un fichero: " NOMBRE
#variables
propie=`ls -l $NOMBRE | awk '{ print $3 }'`
tam=`ls -l $NOMBRE | awk '{ print $5 }'`

#Print en pantalla
echo "El fichero es $NOMBRE"
echo "Su propietario es: $propie" 
echo " El tamanio del fichero es de: $tam"
