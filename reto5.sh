#!/bin/bash
# Programa para resolver el reto 5
# Autor: Rodrigo Huila @RodrigoHuila

option=1
result="Resultado de la opción 1"
logFile=reto5."$(date +%Y%m%d_%H%M%S)".log

echo "La opcion es: $option" > $logFile
echo -e "El resultado es: $result" > $logFile

# Comprobar la escritura en el log
echo -e "\n# Contenido del archivo de log: $logFile"
cat $logFile


