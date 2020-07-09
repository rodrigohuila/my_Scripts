#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Rodrigo Huila - @RodrigoHuila

opcion=0
ini=0

#Función para instalar postgres
instalar_postgres () {
echo -e "\nInstalando postgres..."
}

#Función Desintalar postgres
desinstalar_postgres () {
echo -e "\nDesinstalando postgres..."
}

#Función para sacar un respaldo
sacar_respaldo () {
	echo -e "\nSacando Respaldo..."
	echo -e "\nDirectorio backup: $1..."
}

#Función para restaurar un respaldo
restaurar_respaldo () {
	echo -e "\nRestaurando Respaldo..."
	echo -e "\nDirectorio Respaldo: $1..."
}


while :
do
     if [ $ini == 0 ]; then
         for ((i=0;i<3;i++))
         do
             clear
             echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘     ░░░░░     └┐░░██"
             echo "██▌░│       ░░░       │░▐██"
             echo "███░│      ░░ ░░      │░███"
             echo "██▀─┘░░░░░░░   ░░░░░░░└─▀██"
             echo "██▄░░░    ░░   ░░    ░░░▄██"
             echo "████▄─┘   ░░░░░░░   └─▄████"
             echo "█████░░  ─┬┬┬┬┬┬┬─  ░░█████"
             echo "████▌░░░ ┬┼┼┼┼┼┼┼  ░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo "LOADING...LOADING...LOADING"
             sleep 0.3
  
 	     clear
 
	     echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██"
             echo "██▌░│██████▌░░░▐██████│░▐██"
             echo "███░│▐███▀▀░░▄░░▀▀███▌│░███"
             echo "██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██"
             echo "██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██"
             echo "████▄─┘██▌░░░░░░░▐██└─▄████"
             echo "█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████"
             echo "████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo ".....LOADING.....LOADING..."
             sleep 0.3
             clear
         done
         ini=1
     else
         clear

#while :
#do
	#Limpiar la pantalla
#	clear
	#Desplegar el menú de opciones
	echo "__________________________________________"
	echo "PGUTIL - Programa de utilidad de Postgres"
	echo "             MENU PRINCIPAL              "
	echo "__________________________________________"
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar un respaldo"
	echo "4. Restaurar respaldo"
	echo "5. Salir"

	#Leer los datos del usuario - capturar información
	read -n1 -p "Ingrese una opción [1-5]: " opcion

	#validar la opción ingresada
	case $opcion in
		1)
			instalar_postgres
			sleep 3
			;;
		2)
			desinstalar_postgres
			sleep 3
			;;
		3)
			read -p " Directorio Backup: " directorioBackup
			sacar_respaldo $directorioBackup
			sleep 3
			;;
		4)
			read -p " Directorio de Respaldo: " directorioRespaldos
			restaurar_respaldo $directorioRespaldos
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del programa......."
			exit 0
          		;;
	esac
     #Linea agragada por la imagen de arriba	
     fi
done
			
