#!/bin/bash
#Programa para ejemplificar el uso de los if anidados
#Autor: Rodrigo Huila

notaClase=0
continua=""

echo -e "\n"
echo "Ejemplo If Anidados"
echo -e "\n"
read -n1 -p "Indique Cuál es su nota (1-9):" notaClase
echo -e "\n"
#importante dejar espacio al inicio y al final
if [ $notaClase -ge 7 ]; then
      echo -e "\n"
      echo "El alumno aprueba la materia"
      read -p "¿Va continuar estudiando en el siguiente nivel (s/n)?:" continua
   if [ $continua = "s" ]; then
        echo -e "\n"
	echo "Bienvenido al siguiente nivel"	
   else
	echo -e "\n"
	echo "Gracias por trabajar con nosotros, mucha suerte!!!"
   fi
else
	echo -e "\n"
	echo "El alumno no aprueba la materia"
fi
