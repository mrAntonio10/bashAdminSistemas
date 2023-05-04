#! /usr/bin/bash

OPCIONES="Limpiar_Pantalla /etc/passwd /etc/group userG userID salir"
#Aqui tenemos dos cosas, una variable OPT texto y un REPLY que es un id del select
date #fecha
whoami #quien esta logueado


#IFS
OIFS=$IFS
IFS=:

select opt in $OPCIONES;
do
	echo texto: $opt y reply: $REPLY
	if [ $opt = "Limpiar_Pantalla" ];
	 then
	    clear
    	elif [ $opt = "/etc/passwd" ];
	 then
          cat /etc/passwd | tail -5
        elif [ $opt = "/etc/group" ];
	then
	  cat /etc/group | tail -5
	elif [ $opt = "userG" ];
	then
		read -p "Ingrese el nombre de un usuario: " NOMBRE
		echo "grupos"
	elif [ $opt = "userID" ];
	then
		read -p "Ingrese el nombre de un usuario: " Nombre
		echo "ID"
		id -u $Nombre
	elif [ $opt = "salir" ];
	then
		echo "Saliendo"
		exit
	else
		clear
              echo "opcion erronea"
	fi
done

