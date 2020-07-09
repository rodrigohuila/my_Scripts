#!/bin/bash
#Programa para ejemplificar el uso de la sentecia de desición if, else
#Autor: Rodrigo Huila

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
echo -e "\n"
read -n1 -p "Indique Cuál es su nota (1-9):" notaClase
echo -e "\n"
#importante dejar espacio al inicio y al final
if (( $notaClase >= 7 )); then
	echo "El alumno aprueba la materia"
else
	echo "El alumno no aprueba la materia"
fi
echo -e "\n"
read -p "Indique cuál es su edad:" edad
#le = lower equal
if [ $edad -le 18 ]; then
	echo "La persona no puede votar"
else
	echo "La persona puede votar"
fi
echo -e "\n"
