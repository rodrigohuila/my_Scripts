#!/bin/bash
#Programa para mover carpetas de una misma extensión dede Downloads a otro Directorio
#Autor: Rodrigo Huila - @RodrigoHuila

ext=""
dirdestino=""
contar=0

##Funciones
#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "########### Moving files..........................############"
   echo "##############################################################"
   echo -e "\n"
}

#Función mover archivos
mover_archivos () { 
	echo "Moviendo archivo(s) .$ext al directorio seleccionado previamente"
	mv *.$ext /home/rodrigo/$dirdestino
	check=($?) #verifica si el comando anterior se ejecutó
}


#Función Contar archivos de la extensión seleccionada
cuenta_archivo () {
	contar=$(ls *.$ext | wc -l)
}


##Inicio del programa
cabecera_programa
read -p "Ingrese la extensión del archivo a mover: " ext
read -p "Ingrese la ruta de la carpeta a mover, sino se toma por defecto Donwloads: /home/" dirorigen
read -p "Ingrese la ruta de la carpeta destino: /home/rodrigo/" dirdestino
diractual=$(pwd)


while true; do
	if [ -z $dirorigen ]; then
	      #echo "VACÍO"
	      #break
	      cd /datos/Downloads
	      cuenta_archivo
	      case $ext in
	      "mp4")
	      	    mover_archivos
		    break;;
	      "sh")
		    mover_archivos
		    break;;
	      "pdf")
	      	    mover_archivos
		    break;;
	      "txt")
		    mover_archivos
		    break;;
	      esac
	else 
	      #echo "Llen!!ddoos"
	      #break
	      cd /home/$dirorigen
	      cuenta_archivo
	      case $ext in
	      "mp4")
		    mover_archivos
		    break;;
	      "sh")
		    mover_archivos
		    break;;
	      "pdf")
		    mover_archivos
		    break;;
	      "txt")
		    mover_archivos
		    break;;
	      esac
	fi
done


#Validar si acción se ejecutó correctamente
if [ $check -eq 0 ]; then
    echo -e "\n"
    echo "$contar archivo(s) trasladados al directorio ~/$dirdestino correctamente.😀: "
else
    echo -e "\n"
    echo "$contar archivo(s) no fueron trasladados al directorio ~/$dirdestino.🙁: "
fi


echo -e "\n"
echo "Archivos de extensión $ext en directorio destino: "
#Mostrar lista de archivos $ext en directorio destino
cd ~/$dirdestino
ls -lth *.$ext
echo -e "\n"


#Ir al directorio en donde se ejecuto el script
cd $diractual


