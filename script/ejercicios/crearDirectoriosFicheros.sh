#!/bin/bash
echo "Vamos a crear el fichero PRUEBADF en /home/mroca"
	mkdir -p /home/mroca/PRUEBADF
I=40

until [ $I -lt 1 ];
do
       touch /home/mroca/PRUEBADF/fichero$I.txt
	((I--))       
done
