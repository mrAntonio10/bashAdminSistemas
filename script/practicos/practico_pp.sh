#!/bin/bash
#exit 1, no tienes permisos de root

if [ $(id -u) -eq 0 ];
then
	#Interfaz de opciones
	OPCIONES="Crear_Cuenta Cambiar_Clave_Cuenta Expirar_Clave Borrar_Cuenta Bloquear_Cuenta Desbloquear_Cuenta Cambiar_Permisos_Fichero/Directorio Cambiar_Fecha_Expiracion_Clave"

                select opt in $OPCIONES;
                do
			if [ $opt == "Crear_Cuenta" ];
			then
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
                			read -p "Que nombre tiene el usuario?: " NOMBRE

                			#Creacion completa de usuario
                			echo Porfavor escoja una shell a su preferencia
                			OPCIONES="/bin/sh /bin/bash /usr/bin/sh /usr/bin/bash /usr/bin/tmux /bin/tmux /usr/bin/zsh /bin/zsh"

                        		select opt2 in $OPCIONES;
                			do
                        			echo "vamos a crear el usuario $User de nombre $NOMBRE y shell $opt2"

                				#creamos el usuario
                        			`useradd -c "$NOMBRE" -s "$opt2" "$user"`
                        			exit 100
                			done
				fi
			
			#cambiar cuenta
			elif [ $opt == "Cambiar_Clave_Cuenta" ];
			then
				#Parte 2 - cambiar contrasenia a un usuario
       				 read -p "Ingrese el nombre de usuario al cual quiere modificar password: " USER
        			 passwd $USER
				exit 100

			#Expirar clave
			elif [ $opt == "Expirar_Clave" ];
			then
				read -p "Escriba Usuario a expirar clave: " NOMBRE
				passwd -e $NOMBRE
				exit 100

			#borrar cuenta
			elif [ $opt == "Borrar_Cuenta" ];
			then
				read -p "EScriba el usuario que desea eliminar: " NOMBRE
				userdel -r $NOMBRE
				exit 100

			#Bloquear cuenta
			elif [ $opt == "Bloquear_Cuenta" ];
                        then
                                read -p "EScriba el usuario que desea bloquear: " NOMBRE
                                usermod -L $NOMBRE
                                exit 100

			#Desbloquear cuenta
			elif [ $opt == "Desbloquear_Cuenta" ];
                        then
                                read -p "EScriba el usuario que desea Desbloquear: " NOMBRE
                                usermod -U $NOMBRE
                                exit 100

			#Cambiar permisos de un fichero o directorio
			elif [ $opt == "Cambiar_Permisos_Fichero/Directorio" ];
                        then
                                read -p "Escriba la ruta del fichero: " NOMBRE
                                #Verificamos que exista
				if [[ -e $NOMBRE ]];
       				then
                			echo "Solo los permisos de $NOMBRE"
                			ls -l $NOMBRE | awk '{ print $1 }'
				#Permisos a asignar
				read -p "Escriba los permisos a asignar\n r : lectura\n w : escritura\n x : ejecucion\n ejm: rx o w\n + para otorgar - para quitar: " PERMISOS
			       chmod $PERMISOS $NOMBRE	
        			else
                			echo "Revisar, No Coincide"

        			fi

                                exit 100

			#Cambiar fecha expiracion clave
			elif [ $opt == "Cambiar_Fecha_Expiracion_Clave" ];
                        then
				read -p "Escriba el nombre del usuario para expirar clave: " NOMBRE
                                read -e -p "Escriba la fecha de expiracion\nFormato YYYY-MM-DD : " FECHA
				chage -E $FECHA $NOMBRE -W 10

				#MOSTRAMOS CAMBIOS
				chage -l $NOMBRE
                                
                                exit 100

	
			fi
                done         
else
        echo "Necesitas permisos de root"
        exit 1
fi
