#!/bin/bash

S1='cadena'
S2='Cadena'

if [ $S1 != $S2 ];
then
	echo "S1 ('$S1') no es igual a S2 ('$S2')"

fi

if [ $S1 = $S2 ];
then
	echo "S1 ('$S1') es igual a S1 ('$S1') "
fi


if [ $S1 > $S2 ];
then
	echo "S1 ('$S1') es mayor que S2 ('$S2')"

fi

if [ $S1 < $S2 ];
then
	echo "S1 ('$S1') es menor que S2 ('$S2')"
fi
