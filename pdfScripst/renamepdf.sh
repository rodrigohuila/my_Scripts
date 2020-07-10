#!/bin/bash
#Programa para convertir archivos pdf a texto 
#Autor: Rodrigo Huila - @RodrigoHuila

dirorigen=$(pwd)
n=0
arregloNombres=()
nomb=1

##Funciones
#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "########### Rename PDF ......................#################"
   echo "##############################################################"
   echo -e "\n"
}

cabecera_programa
read -p "Digíte el directorio donde se encuentran los PDF: home/datos/Downloads/" dirdestino
cd ~/Downloads/$dirdestino

#Ir de PDF Scaneado en PDF Scaneado y cambiarles el nombre a números ordenados
for  i in *.pdf;
do
     mv "$i" "$nomb.pdf";
     #echo $i;
     ((nomb++))
done;


#Ir de PDF en PDF y convertirlo a TXT
for i in *.pdf; 
do 
     FICHERO=$i;
     #echo $i;
     pdftotext -layout "${FICHERO%.*}.pdf";
done;

#Ir de TXT en TXT y Renombrar PDFS con la información extraída
for i in *.txt;
do
     echo "$i";
     #nombre=$(awk 'BEGIN{FS="\n"; RS=""} {print $1"-"$2}' "$i" | sed -n 1p | sed 's/ //g')
     nombre=$(awk 'BEGIN{FS="\n"; RS=""} {print $1$2}' "$i" | sed -n 1p | sed 's/^[ \t]*//;s/[ \t]*$//' | sed 's/\s/_/g' | sed 's/__________________/-/g')
     echo $nombre;
     FICHERO=$i;
     mv "${FICHERO%.*}.pdf" "$nombre.pdf"
     mv "$i" "$nombre.txt";
     #arregloNombres=("${arregloNombres[@]}" $nombre)
done;


#Contar archivos pdf
contar=$(find -name "*.pdf" | wc -l)

##Eliminar TXT
rm *.txt

#Comprimir PDFS
zip $dirdestino.zip *.pdf

##Eliminar PDF
rm *.pdf


#ir al directorio origen donde se ejecutó el script
cd $dirorigen


#imprimir a pantalla el total de archivos de la carpeta anterior
echo -e "\n"
echo "Total de archivos PDF procesados fué: " $contar
