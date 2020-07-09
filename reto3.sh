#!/bin/bash
# Programa del reto No 03 - Programación bash
# Autor: Copiado por Rodrigo Huila


opcionRegex='^[1-5]{1}$'
opcion=0
numeroRegex='^[0-9]+$'
numero=0
cadenaRegex='^[a-ZA-Z]+$'
cadena=""
archivo=""      


clear
echo "****************************"
echo "** Programa de validación **"
echo "** 1- Validacion números  **"
echo "** 2- Validación cadenas  **"
echo "** 3- Validación archivos **"
echo "** 4- Validación URL      **"
echo "** 5- Validación mixta    **"
echo "****************************"

echo -e "\n"
read -p "ingrese una opcion (1-5): " opcion
echo -e "\n"

case $opcion in
    1)
	read -p "Ingrese un número: " numero
	if [[ $numero =~ $numeroRegex ]]; then
	    echo "Es un número valido"
	else
	    echo "No es un número"
	fi
    ;;
    2) 
	read -p "Ingrese una cadena: " cadena
	if [[ $cadena =~ $cadenaRegex ]]; then
	    echo "\nEs una cadena válida ;)"
	else
	    echo "\nTiene caracteres no permitidos :|"
	fi
    ;;
    3)
	read -p "Ingrese un directorio/archivo: " archivo
	if [ -d$archivo ]; then 
	    echo -e "\nEs un directorio"
	elif [ -e$archivo ]; then
	    echo -e "\nEs un archivo"
	else
	    echo -e "\nNo existe"
	fi
    ;;
    [4-5]) echo -e "\nAún no implementado";;
    *) echo -e "\nOpción no válida"
esac 
