#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2 
