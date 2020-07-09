#!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Escribir en un Archivos"

echo "Valores escritos con el comando ECO" >> $1

#Adcición multilínea
cat <<EOM >>$1
$2
EOM
