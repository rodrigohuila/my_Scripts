#!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Loops Anidados:"
echo -e "\n"
for fil in $(ls)
do
    for nombre in {1..4}
    do
	echo "Nombre archivo: $fil _ $nombre"
    done
done

