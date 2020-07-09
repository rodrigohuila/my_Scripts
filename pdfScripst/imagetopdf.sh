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
   echo "########### Rename PDF made by Images..........###############"
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

nomb=1
#Ir de PDF Scaneado en PDF Scaneado y convertirlo a Imagen JPG
for i in *.pdf; 
do 
     FICHERO=$i;
     convert "$i" "${FICHERO%.*}.jpg";
     #echo $i;
done;


nomb=1
#Ir de JPG en JPG y convertirlo a Texto
for i in *.jpg;
do
     FICHERO=$i;
     tesseract "$i" "${FICHERO%.*}" -l spa;
done;


nomb=1
#Ir de TXT en TXT y conseguir los datos del documento y cambiar nombre de PDF
for i in *.txt;
do
     echo "$i";
     nombre=$(awk 'BEGIN{FS="\n"; RS="CERTIFICA"} {print $2 $3 $4}' "$i" | sed -n 2p | sed 's/*x//g' | sed 's/ /_/g')
     echo $nombre;
     mv "$i" "$nombre.txt";
     FICHERO=$i;
     mv "${FICHERO%.*}.pdf" "$nombre.pdf"
     arregloNombres=("${arregloNombres[@]}" $nombre)
     echo "${FICHERO%.*}";
done;



#Mostar información recolectada en el arreglo de Nombres
    # echo $echo "Arreglo de Cadenas:${arregloNombres[*]}";


#Renombrar cada PDF con la información extraída     
#for i in *.pdf
#do
#     mv "$i" "${arregloNombres[n]}.PDF";
     #echo "${arregloNombres[n]}.PDF";
#     ((n++))
#done;


#Mostrar Arreglo creado
#echo -e "\n"
#echo "${arregloNombres[n]}.PDF";
#echo -e "\n"
#echo "${arregloNombres[0]}.PDF";


##Eliminar JPG & TXT
rm *.jpg
rm *.txt


#Contar PDFS
contar=$(find -name "*.pdf" | wc -l)

#Comprimir PDFS
zip $dirdestino.zip *.pdf


##Eliminar PDF
rm *.pdf



#ir al directorio origen donde se ejecutó el script
cd $dirorigen


#imprimir a pantalla el total de archivos de la carpeta anterior
echo -e "\n"
echo "Total de archivos PDF procesados fué: " $contar;
