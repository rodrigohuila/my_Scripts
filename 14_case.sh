#!/bin/bash
#Programa para ejemplificar el uso de la sentencia case
#Autor: Rodrigo Huila

opcion=""

echo -e "\n"
echo "Ejemplo Sentencia Case"
echo -e "\n"
read -n1 -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in
	"A") echo -e "\nOperación Guardar Archivo";;
	"B") echo "Operación Eliminar Archivo";;
	[C-E]) echo "No está implementada la operación";;
	"*") "Opción Incorrecta"
esac
