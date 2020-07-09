#!/bin/bash
#Programa para ejemplificar el uso de la sentecia de desición if, elif
#Autor: Rodrigo Huila

notaClase=0
edad=0

echo "Ejemplo Sentencia If-elif"
echo -e "\n"
read -p "Indique cuál es su edad:" edad
#le = lower equal
if [ $edad -le 18 ]; then
	echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
	echo "La persona es adulta"
else
	echo "La persona es adulto mayor"
fi
echo -e "\n"
