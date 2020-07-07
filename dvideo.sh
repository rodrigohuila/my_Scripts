#!/bin/bash
#Programa para descargar videos desde youtube
#Autor: Rodrigo Huila - @RodrigoHuila

ini=0
#calidad=0
#nombre=""
DIR="/datos/Videos/"

#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "################# Program to download video ##################"
   echo "##############################################################"
   echo -e "\n"
}

#Función Muestra descarga
muestra_descarga () {
  echo "Downloading $nombre"
  echo "In $calidad resolution"
}


cabecera_programa
read -p "Ingrese el link desde youtube: " link
nombre=$(youtube-dl --get-filename -o "%(title)s.%(ext)s" $link --restrict-filenames)
echo "Usted a seleccionado $nombre"
echo -e "\n"
sleep 1

#Desplegar el menú de opciones de calidad de video
echo "Lista de Formatos disponibles: "
youtube-dl --list-formats $link
echo -e "\n"
#Leer la calidad del video - capturar información
read -p "Escoja un código de formato de la primera columna: " calidad


#Efecto de cargado de la información
if [ $ini == 0 ]; then
   for ((i=0;i<5;i++))
   do
	cabecera_programa
     	muestra_descarga
	echo "-----------------------------\--------------------------------"
	sleep 0.5
	cabecera_programa
	muestra_descarga
	echo "-----------------------------/--------------------------------"
	sleep 0.5
   done
   ini=1
fi

cabecera_programa
muestra_descarga
#echo "||||||||||||||||||||||||||||||/|||||||||||||||||||||||||||||||"
echo "😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀"

echo -e "\n"

#Comando de descarga
youtube-dl -f "bestvideo $calidad/[ext=mp4]+bestaudio[ext=m4a]/best" --output "$DIR$nombre" $link
#youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' --get-filename -o '%(title)s.%(ext)s' $link

sleep 2
clear
