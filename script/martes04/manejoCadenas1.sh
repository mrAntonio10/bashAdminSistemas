#!/bin/bash
	#Para cortar es :
read -p "Ingrese la cadena: " NOMBRE
read -p "Ingerse numero pa largo de caracteres " NU
echo $NOMBRE | wc -m
echo ${NOMBRE:0:NU} # abcABC123ABCabc



echo ${string:0:1} # a (primer caracter)
echo ${string:7} # 23ABCabc
echo ${string:7:3} # 23A (3 caracteres desde posición 7)
echo ${string:7:-3} # 23ABC (desde posición 7 sin los ultimos 3 caracteres)
echo ${string: -4} # Cabc (atención al espacio antes del menos)
echo ${string: -4:2} # Ca (atención al espacio antes del menos)
echo ${string: -4:-3} # (prestar atencion al espacio (Los ultimos 4 caracteres menos los ultimos 3)
