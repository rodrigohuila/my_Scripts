#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Rodrigo Huila - @RodrigoHuila

ini=0
opcion=0
salir=""

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
       
        #Desplegar el menú de opciones
	echo "__________________________________________"
	echo "                                          "
	echo "               Reto No 4                  "
	echo "             MENU PRINCIPAL               "
	echo "__________________________________________"
	echo "1. Procesos Actuales"
	echo "2. Memoria Disponible"
	echo "3. Espacio de Disco"
	echo "4. Información de Red"
	echo "5. Variables de Entorno Configuradas"
	echo "6. Información Programa"
	echo "7. Backup información"
	echo "8. Salir"

	#Leer los datos del usuario - capturar información
	echo -e "\n"
	read -n1 -p "Ingrese una opción [1-8]: " opcion
	echo -e "\n"

	#validar la opción ingresada
	case $opcion in
		1)
			echo -e "\nProcesos Actuales...................."
			echo -e "\n"
			pstree | less
			sleep 3
            		;;
		2)
			echo -e "\nMemoria Disponible......,,,,,,,,,,,,,,"
			echo -e "\n"
			free -h --total
			 read -n1 -p "¿Limpiar?[y]: " salir
                                if [ $salir = "y" ]; then
                                        clear
                                fi
			;;
		3)
		        echo -e "\nEspacio de Disco......................"
			echo -e "\n"
			df -h
			sleep 5
			;;
		4)
			echo -e "\nInformación de Red...................."
			echo -e "\n"
			uname && whoami && hostname -i && ifconfig
			sleep 3
			;;
		5)
			echo -e "\nVariables de Entorno Configuradas....."
			echo -e "\n"
			printenv | less
			sleep 5
			;;
		6)
			echo -e "\nInformación Programa.................."
			echo -e "\n"
			cd /home/rodrigo/shellCourse
			vim readme.txt
			;;
		7)
			echo -e "\nEmpaquetando: Backup de la Información...................."
			echo -e "\n"
			
			#Ir a la carpeta Backup
			cd /home/datos/Documents/Backup
			#empaqueta con TAR [nombre archivo que se va a generar] [nombre o ruta del archivo a encriptar]
			tar -zcvf respaldo.tar.gz /home/rodrigo/Documents/scripts
			
			#echo "****Empaquetar todos los scripts .sh de la carpeta shellCourse"
			#tar -cvf shellCourse.tar *.sh*
                        #pbzip2 -f shellCourse.tar

                        #echo "Empaquetar un directorio con tar y pbzip2"
                        #tar -cf *.sh -c > shellCourse.tar.bz2

			#Empaquetar con ZIP y con clave
			#empaqueta con ZIP [nombre final] [nombre de archivo a empaquetar]
			zip -e respaldo.zip respaldo.tar.gz

			#Enviar el archivo empauetado resultane a otra máquina
			host=""
			usuario=""

			read -p "Ingresar el host: " host
			read -p "Ingresar el usario: " usuario
			echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"
                        #comando para tranferir archivos por la red
			#rsync -avz $(pwd) $usuario@$host:User/martosfre/Downloads/platzi
			
			sleep 1 
			;;
		8)
			echo -e "\nSaliendo del programa................."
			exit 0
          		;;
	esac
     #Linea agregada por la imagen de arriba	
     fi
done
			
