#! /usr/bin/bash

DATE=`date +%A`
echo vamos a sacar una copia de la ruta  /home
tar czf home-$DATE.tar.gz /home
echo vamos a sacar un backup de la ruta /var
tar czf var-$DATE.tar.gz /var
