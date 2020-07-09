#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Rodrigo Huila - @RodrigoHuila

arregloNumeros=(1 2 3 4 5 6)
clear

echo -e "\n"
echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
	echo "Número: $num"
done

echo -e "\n"
echo "Iterar através de la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
	echo "Nombres: $nom"
done

echo -e "\n"
echo "Iterar en archivos"
for file in *
do
	echo "Nombre Archivo: $file"
done

echo -e "\n"
echo "Iterar utilizando un comando"
for fil in $(ls)
do
	echo "Nombre archivo: $fil"
done

echo -e "\n"
echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
     echo "Número:$i"
done

echo -e "\n"


