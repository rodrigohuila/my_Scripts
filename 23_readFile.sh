#!/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Leer en un Archivos"

cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco se recorten al inicio o al final
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
	echo "$linea"
done < $1 

# < Caracter para leer
# > Caracter para escribir

