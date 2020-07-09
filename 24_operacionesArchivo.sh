#!/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Operaciones de un archivo"
echo "Crear directorio"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

