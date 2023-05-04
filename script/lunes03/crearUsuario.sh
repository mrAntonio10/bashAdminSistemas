#!/bin/bash

#Tenemos que crear un usuario con la opcion adduser
# -c para nombre
#- s para shell

echo Porfavor ingrese su nombre Completo
	read NO

echo porfavor escriba el nombre de usuario a utiizar
	read USER

echo Porfavor escoja una shell a su preferencia
OPCIONES="/bin/sh /bin/bash /usr/bin/sh /usr/bin/bash /usr/bin/tmux /bin/tmux /usr/bin/zsh /bin/zsh"

select opt in $OPCIONES;
do
	echo "vamos a crear el usuario $USER de nombre $NO y shell $opt"
	#creamos el usuario
	`useradd -c "$NO" -s "$opt" "$USER"`
	exit 
done




