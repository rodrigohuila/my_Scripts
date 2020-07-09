#!/bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando el zip
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse con ZIP y asignarle una clave de seguridad"
zip -e shellCourse.zip *.sh
