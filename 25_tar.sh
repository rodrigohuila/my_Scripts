#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*
