#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando RSYNC"

host=""
usuario=""

read -p "Ingresar el host: "host
read -p "Ingresar el usario: "usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:User/martosfre/Downloads/platzi
