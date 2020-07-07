#!/bin/bash
#Programa para descargar videos desde youtube
#Autor: Rodrigo Huila - @RodrigoHuila

ini=0
opcion=0
yn=""
DIR="/datos/Music"


##Funciones
#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "########### Program to download audio from a Link ############"
   echo "##############################################################"
   echo -e "\n"
}

#Función Muestra descarga
muestra_descarga () {
        echo "Downloading $nombre"
	echo "of $autor"
}

#Función Comando de descarga
comando_descarga () {
case $yn in
     [Yy]* )
         youtube-dl -f bestaudio --output "$DIR/$autor-$nombre.%(ext)s" --extract-audio --audio-format $formato $link
     ;;
    
     [Nn]* )
	     youtube-dl -f bestaudio --output "$DIR/$autor-$nombre.%(ext)s" --extract-audio --audio-format $formato $link
     ;;
esac
}


##Incio del Programa
#Leer Link de descarga
cabecera_programa
read -n1 -p "Desea Personalizar datos de la canción manualmente: y/n " yn

case $yn in
    [Yy]* )
	#Datos de la canción
	cabecera_programa
	read -p "Ingrese el nombre de la canción: " nombre
	read -p "Ingrese el autor de la canción: " autor
	read -p "Ingrese el link a descargar: " link
	sleep 1
	break;;	
	
     [Nn]* )
	cabecera_programa
	read -p "Ingrese el link a descargar: " link
	nombre=$(youtube-dl --get-filename -o "%(track)s" $link)
	autor=$(youtube-dl --get-filename -o "%(artist)s" $link)
	break;;

	"*" ) echo "Escoja una respuesta (Sí) ó (No).";;	
esac

#Escoger Opción de Formato
cabecera_programa
muestra_descarga
echo -e "\n"
echo "Formatos de audio disponibles:"
echo "1. MP3 (MPEG Audio Layer)"
echo "2. Vorbis (OOG Vorbis-Alternativa Libre mejor que MP3)"
echo "3. Opus (Formato de SoundCloud menor espacio que MP3)"
echo "4. AAC (iTunes)"
echo "5. m4a (iphone)"
echo "6. flac (Free Lossless Audio Code)"
echo "7. wac (WAVE Waveform audio file Microsoft)"
#echo "5. ALAC (iTunes lata calidad)"
echo -e "\n"
read -n1 -p "Escoja su formato preferido [1-5]: " opcion
sleep 0.5

#Validar Formato
   case $opcion in
                1)
                   formato="mp3"
                   ;;
                2)
                   formato="vorbis"
                   ;;
                3)
                   formato="opus"
                   ;;
                4)
                   formato="aac"
                   ;;
                5)
                   formato="m4a"
                   ;;
                6)
                   formato="flac"
                   ;;
                7)
                   formato="wac"
                   ;;
   esac


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
echo "|||||||||||||||||||||||||||||😀|||||||||||||||||||||||||||||||"
echo -e "\n"

#Validar si se descargó la canción correctamente	
comando_descarga
if [ $? -eq 0 ]; then
    echo -e "\n"	
    echo "La canción $nombre se ha descargado correctamente.😀"
else
    echo -e "\n"
    echo "No se pudo descargar la canción $nombre."
fi 

#Enviar datos a un archivo
cat <<EOM >>$DIR/listacanciones.txt
$autor"-"$nombre
$link
EOM

sleep 3
clear
