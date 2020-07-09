#!/bin/bash
#Programa para convertir archivos pdf a texto 
#Autor: Rodrigo Huila - @RodrigoHuila

dirorigen=$(pwd)

##Funciones
#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "########### Converting TXT to PDF.................############"
   echo "##############################################################"
   echo -e "\n"
}

cabecera_programa
read -p "Digíte el directorio donde se encuentran los PDF: home/datos/Downloads/" dirdestino
read -p "Digíte el nombre del archivo final.txt: " file
cd ~/Downloads/$dirdestino

#Descomprimir PDFS
unzip *.zip

#Ir de PDF en PDF de una carpeta y pasarlo a texto
for i in *.PDF; 
do echo $i; 
	pdftotext -layout "$i"; 
done

#Ir de txt en txt de una carpeta y concatenarlos en un solo archivo
for i in *.txt; 
#do echo $i;
do
	cat "$i" >> $file.txt; 
done;

#Fitrar solo líneas 2-3-4 despues del título Solicitud de Pesaje en Terminal
awk 'BEGIN{FS="\n"; RS="SOLICITUD DE PESAJE EN TERMINAL"} {print $2,$3,$4}' $file.txt > $file'2'.txt

#Sacar peso y agregarlo al final de cada línea
awk '{
if ($18 > 0)
{
x = $18 - $14
cnt = $1$2$3
print $0," ",cnt,"Peso_Comunicado:",$14,"Peso_Bascula:",$18,"Diferencia_en_toneladas:",x
} else
{
x = $17 - $14
cnt = $1$2$3
print $0," ",$17,cnt,"Peso_Comunicado:",$14,"Peso_Bascula:",$17,"Diferencia_en_toneladas:",x
}}' $file'2'.txt > $file.TXT


# Contar cantidad de arhivos pdf hay en la diección destino
contar=$(find -name "*.PDF" | wc -l)

#Eliminar Pdfs y txt
rm *.PDF
rm *.txt

#Rename File Name a minúsculas
mv $file.TXT $file.txt

#ir al directorio origen donde se ejecutó el script
cd $dirorigen

#imprimir a pantallael total de archivos de la carpeta anterior
echo -e "\n"
echo "Total de archivos PDF procesados fué: " $contar
