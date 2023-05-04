#!/bin/bash
#exit 1, no tienes permisos de root

#Paso 1- crear una cuenta
if [ $(id -u) -eq 0 ];
then
	echo "root- Que usuario desea crear?"
	read -p "Nombre de login: " user
	#^ expresion que coincida con el inicio de una linea
	#egrep, comando para buscar con expresiones regulares
	#/etc/passwd direccion de los usuarios
	egrep "^$user" /etc/passwd 2> /dev/null

	if [ $? -eq 0 ];
	then
		echo "este usuario ya existe!!"
		exit 0
	elif [ ! -z "$( echo $user | grep "^[0-9]" )" ];
	then
		echo "Los nombres no pueden comenzar con un numero"
		exit 0
	elif [ ! "$user" = "`echo $user | tr A-Z a-z`" ];
	then
		echo "El nombre $user no puede iniciar con mayusculas"
		exit 0
	elif [ ! -z "$( echo $user | grep '\.' )" ];
	then
		echo "El nombre de usuario $user contiene caracteres ilegales"
		exit 0
	
	else
		#leemos el nombre completo
		read -p "Que nombre tiene el usuario?" NOMBRE

		#Creacion completa de usuario
		echo Porfavor escoja una shell a su preferencia
		OPCIONES="/bin/sh /bin/bash /usr/bin/sh /usr/bin/bash /usr/bin/tmux /bin/tmux /usr/bin/zsh /bin/zsh"

		select opt in $OPCIONES;
		do
        		echo "vamos a crear el usuario $User de nombre $NOMBRE y shell $opt"
        
		#creamos el usuario
        		`useradd -c "$NOMBRE" -s "$opt" "$user"`
			exit 100
		done
	fi
	#Parte 2 - cambiar contrasenia a un usuario
	read -p "Ingrese el nombre de usuario al cual quiere modificar password" USER
	passwd $USER
	
else
	echo "Necesitas permisos de root"
	exit 1	
fi
