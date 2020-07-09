#!/bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Rodrigo Huila - @RodrigoHuila

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} - {10..20})

clear
echo -e "\n"
#Imprimir todos los valores
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Rangos:${arregloRangos[*]}"

echo -e "\n"
#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números:${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos:${#arregloRangos[*]}"

echo -e "\n"
#Imprimir la posición 3 del arreglo de números, cadenas de rango
echo "Posición 3 Arreglo de Números:${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos:${arregloRangos[3]}"

echo -e "\n"
#Añadir y eliminar valores en un arreglo
echo "*****Arreglo de Números despues de añadir y eliminar*****"
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Tamaño arreglo de Números:${#arregloNumeros[*]}"


