#!/bin/bash
# Programa para ejemplificar la creación de archivos y directorios
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Archivos - Directorios"

if [ $1 = "d" ]; then
	mkdir -m 755 $2
	echo "Directorio creado correctamente"
	ls -la $2 #Muestra Permisos directorios
	ls -at
elif [ $1 = "f" ]; then
	touch $2 #Da la ventaja que solo crea y no abre un editor
	echo "Archivo creado correctamente"
	ls -la $2 #Muestra Permisos archivos
	ls -at
else
	echo "No existe esa opción: $1"
fi
