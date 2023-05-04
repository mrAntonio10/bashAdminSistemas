#!/bin/bash
echo "Escriba su ruta"
read path
du -sk $path/* | sort -nr | head -5
