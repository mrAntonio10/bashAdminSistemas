#!/bin/bash
#MANEJO DE IFS

        echo "Lista de todos los usuarios: "
OIFS=$IFS #guardamos el valor de IFS
IFS=: #Debido a que el /etc/passwd usa ":" para separar los campos

cat /etc/shadow | while read nmb pass uid gid fullname ignore
	do
 	if [ $pass == '!!' ];
	then
		echo "$nmb NO TIENE UNA CONTRASENIA"
        fi
      done
	 #Luego restauramos el ifs
IFS=$OIFS

																	    
