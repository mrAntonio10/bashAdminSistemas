#!/bin/bash

echo "cantidad de parametros $#"
echo "todos los parametros \n $* \n"

echo "$1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11}"

shift 9

echo "cantidad de parametros luego de shift $#"

echo "$*"
