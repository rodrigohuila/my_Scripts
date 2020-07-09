#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando gzip
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
# Por esta razón se utiliza primero tar(permite varios archvos) y luego gzip que solo perimite empaquetar un solo archivo
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_options.sh
