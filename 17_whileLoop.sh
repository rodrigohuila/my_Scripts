#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while loop
# Autor: Rodrigo Huila - @RodrigoHuila

numero=1

echo -e "\n"
echo "****Ejemplo While:"
while [ $numero -ne 10 ]
do
	echo "Imprimiendo $numero veces"
	numero=$(( numero + 1 ))
done
echo -e "\n"
