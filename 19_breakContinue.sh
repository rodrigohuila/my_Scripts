#!/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Sentencia break y continue:"
echo -e "\n"
for fil in $(ls)
do
    for nombre in {1..4}
    do
	    if [ $fil = "10_downloads.sh" ]; then
          	    break;
	    elif [[ $fil == 4* ]]; then
		    continue;
	    else
		echo "Nombre archivo: $fil _ $nombre"
	    fi
    done
done

