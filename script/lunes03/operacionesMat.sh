#! /usr/bin/bash

VAR=55       #Asignamos el valor 55
((VAR = VAR +1)) #Suma a la variable
((++VAR))  # suma a la variable  -- pre incremento
((VAR++))  # suma a la variable -- postincremento

echo $[VAR * 22]   # multiplica la variable * 22 y muestra
echo $((VAR * 22))  # otra forma de mostra la multiplicacion

echo $VAR*22

echo $VAR * 22
let RES=VAR*22
echo $RES




