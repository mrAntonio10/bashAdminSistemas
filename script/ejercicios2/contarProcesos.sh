#!/bin/bash

echo "Escriba el nombre de un usuario existente"
read user

echo "hola $user usted esta corriendo:"
ps -u $user | wc -l  

