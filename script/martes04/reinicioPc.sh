#!/bin/bash

# Este script reiniciará el equipo después de
# 1 minuto al ejecutarlo como root.
if [ $(whoami) = 'root' ];
then
	# Si el usuario que ejecuta el script es 'root'
	shutdown -r +1
	# "-r" indica que la computadora se reiniciará.
	# "+1" significa que la orden se llevará a cabo luego de 1 minuto.
else
	echo "El script no se ejecutará porque usted no es usuario 'root'"
	# Aparecerá este mensaje cuando se quiera ejecutar el
	# script desde otro usuario que no sea el 'root'.
fi
