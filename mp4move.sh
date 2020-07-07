#!/bin/bash
#Programa para mover archivos mp4 a la carpeta de películas
#Autor: Rodrigo Huila - @RodrigoHuila



cd /datos/Downloads  
count=$(find -name "*.mp4" | wc -l)

if [ $count -ge 1 ]; then
	mv *.mp4 /datos/Videos/Movies
fi




