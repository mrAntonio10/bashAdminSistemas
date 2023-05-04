#! /usr/bin/bash


#Variables de numeros
read -p "Ingrese el primer valor para operar " N1
read -p "Ingrese el segundo valor para operar " N2

total=0
echo " ------Calculadora------ "
#Variables de opciones
OPCIONES="Sumar Restar Multiplicar Dividir Salir"
#Aqui tenemos dos cosas, una variable OPT texto y un REPLY que es un id del select
select opt in $OPCIONES;
do
	if [ $opt = "Salir" ];
	 then
   	echo done
	exit
	elif [ $opt = "Sumar" ];
   	then
          echo Sumamos- Respuesta:
		let total=N1+N2
	     	echo $total
	elif [ $opt = "Restar" ];
	then
		echo Restamos- Respuesta:
		let total=N1-N2
		echo $total
	elif [ $opt = "Multiplicar" ];
	then
		echo Multiplicamos- Respuesta:
		let total=N1*N2
		echo $total
	elif [ $opt = "Dividir" ];
	then
		echo Dividimos- Respuesta:	
		let total=N1/N2
		echo $total
       else
	clear
																				              fi
done

																						
