11_ifElseIfElse.sh                                                                                  0000775 0001750 0001750 00000000650 13661120747 014123  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para ejemplificar el uso de la sentecia de desición if, elif
#Autor: Rodrigo Huila

notaClase=0
edad=0

echo "Ejemplo Sentencia If-elif"
echo -e "\n"
read -p "Indique cuál es su edad:" edad
#le = lower equal
if [ $edad -le 18 ]; then
	echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
	echo "La persona es adulta"
else
	echo "La persona es adulto mayor"
fi
echo -e "\n"
                                                                                        11_ifElse.sh                                                                                        0000775 0001750 0001750 00000001116 13661114565 013032  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para ejemplificar el uso de la sentecia de desición if, else
#Autor: Rodrigo Huila

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
echo -e "\n"
read -n1 -p "Indique Cuál es su nota (1-9):" notaClase
echo -e "\n"
#importante dejar espacio al inicio y al final
if (( $notaClase >= 7 )); then
	echo "El alumno aprueba la materia"
else
	echo "El alumno no aprueba la materia"
fi
echo -e "\n"
read -p "Indique cuál es su edad:" edad
#le = lower equal
if [ $edad -le 18 ]; then
	echo "La persona no puede votar"
else
	echo "La persona puede votar"
fi
echo -e "\n"
                                                                                                                                                                                                                                                                                                                                                                                                                                                  12_ifAnidado.sh                                                                                     0000775 0001750 0001750 00000001270 13661276744 013513  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para ejemplificar el uso de los if anidados
#Autor: Rodrigo Huila

notaClase=0
continua=""

echo -e "\n"
echo "Ejemplo If Anidados"
echo -e "\n"
read -n1 -p "Indique Cuál es su nota (1-9):" notaClase
echo -e "\n"
#importante dejar espacio al inicio y al final
if [ $notaClase -ge 7 ]; then
      echo -e "\n"
      echo "El alumno aprueba la materia"
      read -p "¿Va continuar estudiando en el siguiente nivel (s/n)?:" continua
   if [ $continua = "s" ]; then
        echo -e "\n"
	echo "Bienvenido al siguiente nivel"	
   else
	echo -e "\n"
	echo "Gracias por trabajar con nosotros, mucha suerte!!!"
   fi
else
	echo -e "\n"
	echo "El alumno no aprueba la materia"
fi
                                                                                                                                                                                                                                                                                                                                        13_expresionesCondicionales.sh                                                                      0000775 0001750 0001750 00000001736 13661332207 016667  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para ejemplificar el uso de expresiones condicionales
#Autor: Rodrigo Huila

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su país:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

#-lt = lower than
#-ge = grow equal
#-le = lower equal
echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
	echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
	echo "La persona se trata de un adolecente"
else
	echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
	echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
	echo "La persona es de Sur de América"
else
	echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
	echo "El directorio $pathArchivo existe"
else
	echo "El directorio $pathArchivo no existe"
fi
                                  14_case.sh                                                                                          0000775 0001750 0001750 00000000641 13661334102 012532  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para ejemplificar el uso de la sentencia case
#Autor: Rodrigo Huila

opcion=""

echo -e "\n"
echo "Ejemplo Sentencia Case"
echo -e "\n"
read -n1 -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in
	"A") echo -e "\nOperación Guardar Archivo";;
	"B") echo "Operación Eliminar Archivo";;
	[C-E]) echo "No está implementada la operación";;
	"*") "Opción Incorrecta"
esac
                                                                                               15_arreglos.sh                                                                                      0000775 0001750 0001750 00000002202 13661356723 013446  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Rodrigo Huila - @RodrigoHuila

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} - {10..20})

clear
echo -e "\n"
#Imprimir todos los valores
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Rangos:${arregloRangos[*]}"

echo -e "\n"
#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números:${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos:${#arregloRangos[*]}"

echo -e "\n"
#Imprimir la posición 3 del arreglo de números, cadenas de rango
echo "Posición 3 Arreglo de Números:${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos:${arregloRangos[3]}"

echo -e "\n"
#Añadir y eliminar valores en un arreglo
echo "*****Arreglo de Números despues de añadir y eliminar*****"
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números:${arregloNumeros[*]}"
echo "Tamaño arreglo de Números:${#arregloNumeros[*]}"


                                                                                                                                                                                                                                                                                                                                                                                              16_forLoop.sh                                                                                       0000775 0001750 0001750 00000001335 13661620706 013252  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Rodrigo Huila - @RodrigoHuila

arregloNumeros=(1 2 3 4 5 6)
clear

echo -e "\n"
echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
	echo "Número: $num"
done

echo -e "\n"
echo "Iterar através de la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
	echo "Nombres: $nom"
done

echo -e "\n"
echo "Iterar en archivos"
for file in *
do
	echo "Nombre Archivo: $file"
done

echo -e "\n"
echo "Iterar utilizando un comando"
for fil in $(ls)
do
	echo "Nombre archivo: $fil"
done

echo -e "\n"
echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
     echo "Número:$i"
done

echo -e "\n"


                                                                                                                                                                                                                                                                                                   17_whileLoop.sh                                                                                     0000775 0001750 0001750 00000000434 13661632446 013600  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while loop
# Autor: Rodrigo Huila - @RodrigoHuila

numero=1

echo -e "\n"
echo "****Ejemplo While:"
while [ $numero -ne 10 ]
do
	echo "Imprimiendo $numero veces"
	numero=$(( numero + 1 ))
done
echo -e "\n"
                                                                                                                                                                                                                                    18_loopAnidados.sh                                                                                  0000775 0001750 0001750 00000000424 13661634222 014244  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Loops Anidados:"
echo -e "\n"
for fil in $(ls)
do
    for nombre in {1..4}
    do
	echo "Nombre archivo: $fil _ $nombre"
    done
done

                                                                                                                                                                                                                                            19_breakContinue.sh                                                                                 0000775 0001750 0001750 00000000643 13661642217 014430  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
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

                                                                                             1_comments.sh                                                                                       0000755 0001750 0001750 00000000305 13406072764 013365  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #! /bin/bash
# PROGRAMA: U-POSG
echo "Programa Utilidades Postgres"
    <<"COMENTARIO 1"
    Programa para administrar las utilidades de la Base
    de Datos Postgres
   "COMENTARIO 1"
    
exit 0
                                                                                                                                                                                                                                                                                                                           1_utilityPostgres.sh                                                                                0000755 0001750 0001750 00000000211 13406072764 014766  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # !/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres

echo "Hola bienvenido al curso de Programación bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_menuOpciones.sh                                                                                  0000775 0001750 0001750 00000012066 13662104263 014270  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Rodrigo Huila - @RodrigoHuila

opcion=0
ini=0

while :
do
     if [ $ini == 0 ]; then
         for ((i=0;i<3;i++))
         do
             clear
             echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘     ░░░░░     └┐░░██"
             echo "██▌░│       ░░░       │░▐██"
             echo "███░│      ░░ ░░      │░███"
             echo "██▀─┘░░░░░░░   ░░░░░░░└─▀██"
             echo "██▄░░░    ░░   ░░    ░░░▄██"
             echo "████▄─┘   ░░░░░░░   └─▄████"
             echo "█████░░  ─┬┬┬┬┬┬┬─  ░░█████"
             echo "████▌░░░ ┬┼┼┼┼┼┼┼  ░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo "LOADING...LOADING...LOADING"
             sleep 0.3
  
 	     clear
 
	     echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██"
             echo "██▌░│██████▌░░░▐██████│░▐██"
             echo "███░│▐███▀▀░░▄░░▀▀███▌│░███"
             echo "██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██"
             echo "██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██"
             echo "████▄─┘██▌░░░░░░░▐██└─▄████"
             echo "█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████"
             echo "████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo ".....LOADING.....LOADING..."
             sleep 0.3
             clear
         done
         ini=1
     else
         clear

#while :
#do
	#Limpiar la pantalla
#	clear
	#Desplegar el menú de opciones
	echo "__________________________________________"
	echo "PGUTIL - Programa de utilidad de Postgres"
	echo "             MENU PRINCIPAL              "
	echo "__________________________________________"
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar un respaldo"
	echo "4. Restaurar respaldo"
	echo "5. Salir"

	#Leer los datos del usuario - capturar información
	read -n1 -p "Ingrese una opción [1-5]:" opcion

	#validar la opción ingresada
	case $opcion in
		1)
			echo -e "\nInstalando postgres........."
			sleep 3
			;;
		2)
			echo -e "\nDesinstalando postgres......"
			sleep 3
			;;
		3)
			echo -e "\nRespaldando la información.."
			sleep 3
			;;
		4)
			echo -e "\nRestaurando la información.."
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del programa......."
			exit 0
          		;;
	esac
     #Linea agragada por la imagen de arriba	
     fi
done
			
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          21_archivosDirectorios.sh                                                                           0000775 0001750 0001750 00000000777 13662510664 015666  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar la creación de archivos y directorios
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Archivos - Directorios"

if [ $1 = "d" ]; then
	mkdir -m 755 $2
	echo "Directorio creado correctamente"
	ls -la $2 #Muestra Permisos directorios
	ls -at
elif [ $1 = "f" ]; then
	touch $2 #Da la ventaja que solo crea y no abre un editor
	echo "Archivo creado correctamente"
	ls -la $2 #Muestra Permisos archivos
	ls -at
else
	echo "No existe esa opción: $1"
fi
 22_writeFile.sh                                                                                     0000775 0001750 0001750 00000000406 13662515465 013565  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Escribir en un Archivos"

echo "Valores escritos con el comando ECO" >> $1

#Adcición multilínea
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                          23_readFile.sh                                                                                      0000775 0001750 0001750 00000001037 13662517260 013343  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Leer en un Archivos"

cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco se recorten al inicio o al final
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
	echo "$linea"
done < $1 

# < Caracter para leer
# > Caracter para escribir

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 24_operacionesArchivo.sh                                                                            0000775 0001750 0001750 00000000760 13662526555 015465  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Operaciones de un archivo"
echo "Crear directorio"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

                25_tar.sh                                                                                           0000775 0001750 0001750 00000000354 13662772004 012420  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*
                                                                                                                                                                                                                                                                                    26_gzip.sh                                                                                          0000775 0001750 0001750 00000000736 13663015235 012605  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando gzip
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
# Por esta razón se utiliza primero tar(permite varios archvos) y luego gzip
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 9_options.sh
                                  27_pbzip2.sh                                                                                        0000775 0001750 0001750 00000000541 13663016714 013040  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Rodrigo Huila - @RodrigoHuila

clear

echo -e "\n"
echo "****Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh*
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourse.tar.bz2 
                                                                                                                                                               2_variables_2.sh                                                                                    0000755 0001750 0001750 00000000251 13406072764 013732  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # !/bin/bash
# Programa para revisar la declaración de variables
# Autor: Marco Toscano Freire - @martosfre

echo "Opción nombre pasada del script anterior: $nombre"

                                                                                                                                                                                                                                                                                                                                                       2_variables.sh                                                                                      0000755 0001750 0001750 00000000527 13406072764 013517  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # !/bin/bash
# Programa para revisar la declaración de variables
# Autor: Marco Toscano Freire - @martosfre

opcion=0
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demás procesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                         3_tipoOperadores.sh                                                                                 0000755 0001750 0001750 00000001643 13406072764 014547  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Marco Toscano - @martosfre

numA=10
numB=4

echo "Operadores Aritméticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relaciones"
echo "Números: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicación A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "Residuo A %= B" $((numA %= numB))

                                                                                             4_argumentos.sh                                                                                     0000755 0001750 0001750 00000000471 13406072764 013733  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Marco Toscano Freire - @martosfre

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
                                                                                                                                                                                                       5_subtitucionComand.sh                                                                              0000755 0001750 0001750 00000000522 13406072764 015237  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para revisar como ejecutar comados dentro de un programa y almacenar en una variable para su posterior utilización 
# Autor: Marco Toscano Freire - @martosfre

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"
                                                                                                                                                                              6_readEcho.sh                                                                                       0000755 0001750 0001750 00000000626 13406072764 013265  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando echo, read y $REPLY
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"
                                                                                                          7_read.sh                                                                                           0000755 0001750 0001750 00000000557 13406072764 012472  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$option , backupName:$backupName"
                                                                                                                                                 8_readValidate.sh                                                                                   0000755 0001750 0001750 00000000765 13406072764 014146  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción:$option , backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"


           dmusic.sh                                                                                           0000775 0001750 0001750 00000001643 13662615445 012617  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa para descargar videos desde youtube
#Autor: Rodrigo Huila - @RodrigoHuila

nombre:""
autor:""
link:""
timer=0

clear
echo "##############################################################"
echo "######## Programa para descargar Musica desde Youtube ########"
echo "##############################################################"
echo -e "\n"
read -p "Ingrese el nombre de la canción: " nombre
read -p "Ingrese el autor de la canción: " autor
read -p "Ingrese el link desde youtube: " link

while [ $timer -ne 4 ]
do
	echo "-----------------------------\--------------------------------"
       	sleep 2
       	tput el1
       	sleep 2
	echo "-----------------------------/--------------------------------"

	timer=$(( timer + 1 ))
done
echo -e "\n"

#Comando de descarga
youtube-dl -f bestaudio --output "/home/datos/Music/$autor - $nombre.%(ext)s" --extract-audio --audio-format vorbis $link

sleep 3
clear
                                                                                             reto2.sh                                                                                            0000775 0001750 0001750 00000003140 13661122627 012352  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Reto2 =  Solicita información de nombres, apellidos, direccón, edad y lefono.
# Copy By Rodrigo

flag=v
edadRegex='^[0-9]{1,2}$'
direccionRegex="^([a-zA-Z ]+)([0-9 ]+)(#)([a-zA-Z0-9 ]+-[a-zA-Z0-9]+)$"
telefonoRegex="^3[0-9]{9}$"

echo -e "\n"
echo "Programa para ingresar datos personales"
echo -e "\n"
read -p "Ingrese su nombre:" nombres
read -p "Ingrese su apellido:" apellidos
read -p "Ingrese su edad:" edad
read -p "Ingrese su dirección:" direccion
read -p "Ingrese su telefono:" telefono


echo -e "\n"
echo "Datos ingresados"
echo -e "\n"
echo "Nombres: $nombres"
echo "Apellidos: $apellidos"
echo "Edad: $edad"
echo "Dirección: $direccion"
echo "Teléfono: $telefono"


        if [[ $edad =~ $edadRegex ]]; then
                echo "Edad correcta"
                read -p "Dato válido, continuar..."
        else
                echo "Edad Inválida... Intente nuevamente"
                read -p "Ingrese su edad:" edad

        fi


	if [[ $direccion =~ $direccion ]]; then
		echo "Dirección correcta"
		read -p "Dato válido, continuar..."
	else
		echo "Dirección Inválida... Intente nuevamente"
        	 read -p "Ingrese su dirección:" direccion
	fi


#flag=v

#while [ $flag == v ]
#do
	if [[ $telefono =~ $telefonoRegex ]]; then
		echo "Teléfono correcto"
		read -p "Dato válido, continuar..."
	else
		echo "Teléfono Inválido... Intente nuevamente"
		 read -p "Ingrese su teléfono:" telefono

	fi
#done

echo -e "\n"
echo "Datos ingresados"
echo -e "\n"
echo "Nombres: $nombres"
echo "Apellidos: $apellidos"
echo "Dirección: $direccion"
echo "Edad: $edad"
echo "Teléfono: $telefono"

                                                                                                                                                                                                                                                                                                                                                                                                                                reto3.sh                                                                                            0000775 0001750 0001750 00000002367 13661357204 012366  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
# Programa del reto No 03 - Programación bash
# Autor: Copiado por Rodrigo Huila


opcionRegex='^[1-5]{1}$'
opcion=0
numeroRegex='^[0-9]+$'
numero=0
cadenaRegex='^[a-ZA-Z]+$'
cadena=""
archivo=""      


clear
echo "****************************"
echo "** Programa de validación **"
echo "** 1- Validacion números  **"
echo "** 2- Validación cadenas  **"
echo "** 3- Validación archivos **"
echo "** 4- Validación URL      **"
echo "** 5- Validación mixta    **"
echo "****************************"

echo -e "\n"
read -p "ingrese una opcion (1-5): " opcion
echo -e "\n"

case $opcion in
    1)
	read -p "Ingrese un número: " numero
	if [[ $numero =~ $numeroRegex ]]; then
	    echo "Es un número valido"
	else
	    echo "No es un número"
	fi
    ;;
    2) 
	read -p "Ingrese una cadena: " cadena
	if [[ $cadena =~ $cadenaRegex ]]; then
	    echo "\nEs una cadena válida ;)"
	else
	    echo "\nTiene caracteres no permitidos :|"
	fi
    ;;
    3)
	read -p "Ingrese un directorio/archivo: " archivo
	if [ -d$archivo ]; then 
	    echo -e "\nEs un directorio"
	elif [ -e$archivo ]; then
	    echo -e "\nEs un archivo"
	else
	    echo -e "\nNo existe"
	fi
    ;;
    [4-5]) echo -e "\nAún no implementado";;
    *) echo -e "\nOpción no válida"
esac 
                                                                                                                                                                                                                                                                         reto4.sh                                                                                            0000775 0001750 0001750 00000014005 13662355026 012360  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Rodrigo Huila - @RodrigoHuila

ini=0
opcion=0
salir=""

while :
do
     if [ $ini == 0 ]; then
         for ((i=0;i<3;i++))
         do
             clear
             echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘     ░░░░░     └┐░░██"
             echo "██▌░│       ░░░       │░▐██"
             echo "███░│      ░░ ░░      │░███"
             echo "██▀─┘░░░░░░░   ░░░░░░░└─▀██"
             echo "██▄░░░    ░░   ░░    ░░░▄██"
             echo "████▄─┘   ░░░░░░░   └─▄████"
             echo "█████░░  ─┬┬┬┬┬┬┬─  ░░█████"
             echo "████▌░░░ ┬┼┼┼┼┼┼┼  ░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo "LOADING...LOADING...LOADING"
             sleep 0.3
  
 	     clear
 
	     echo "███████████████████████████"
             echo "███████▀▀▀░░░░░░░▀▀▀███████"
             echo "████▀░░░░░░░░░░░░░░░░░▀████"
             echo "███│░░░░░░░░░░░░░░░░░░░│███"
             echo "██▌│░░░░░░░░░░░░░░░░░░░│▐██"
             echo "██░└┐░░░░░░░░░░░░░░░░░┌┘░██"
             echo "██░░└┐░░░░░░░░░░░░░░░┌┘░░██"
             echo "██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██"
             echo "██▌░│██████▌░░░▐██████│░▐██"
             echo "███░│▐███▀▀░░▄░░▀▀███▌│░███"
             echo "██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██"
             echo "██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██"
             echo "████▄─┘██▌░░░░░░░▐██└─▄████"
             echo "█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████"
             echo "████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████"
             echo "█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████"
             echo "███████▄░░░░░░░░░░░▄███████"
             echo "██████████▄▄▄▄▄▄▄██████████"
             echo "███████████████████████████"
             echo ".....LOADING.....LOADING..."
             sleep 0.3
             clear
         done
         ini=1
     else
         clear
#Desplegar el menú de opciones
	echo "__________________________________________"
	echo "                                          "
	echo "               Reto No 4                  "
	echo "             MENU PRINCIPAL               "
	echo "__________________________________________"
	echo "1. Procesos Actuales"
	echo "2. Memoria Disponible"
	echo "3. Espacio de Disco"
	echo "4. Información de Red"
	echo "5. Variables de Entorno Configuradas"
	echo "6. Información Programa"
	echo "7. Backup información"
	echo "8. Salir"

	#Leer los datos del usuario - capturar información
	echo -e "\n"
	read -n1 -p "Ingrese una opción [1-8]: " opcion
	echo -e "\n"

	#validar la opción ingresada
	case $opcion in
		1)
			echo -e "\nProcesos Actuales...................."
			echo -e "\n"
			pstree | less
			sleep 3
            		;;
		2)
			echo -e "\nMemoria Disponible......,,,,,,,,,,,,,,"
			echo -e "\n"
			free -h --total
			 read -n1 -p "¿Limpiar?[y]: " salir
                                if [ $salir = "y" ]; then
                                        clear
                                fi
			;;
		3)
		        echo -e "\nEspacio de Disco......................"
			echo -e "\n"
			df -h
			sleep 5
			;;
		4)
			echo -e "\nInformación de Red...................."
			echo -e "\n"
			uname && whoami && hostname -i && ifconfig
			sleep 3
			;;
		5)
			echo -e "\nVariables de Entorno Configuradas....."
			echo -e "\n"
			printenv | less
			sleep 5
			;;
		6)
			echo -e "\nInformación Programa.................."
			echo -e "\n"
			cd /home/rodrigo/shellCourse
			vim readme.txt
			;;
		7)
			echo -e "\nBackup Información...................."
			echo -e "\n"
			cd /home/datos/Documents/Backup
			tar -zcvf respaldo.tar.gz /home/rodrigo/Documents/scripts
			sleep 6 
			;;
		8)
			echo -e "\nSaliendo del programa................."
			exit 0
          		;;
	esac
     #Linea agregada por la imagen de arriba	
     fi
done
			
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           reto5.sh                                                                                            0000775 0001750 0001750 00000000553 13662543003 012356  0                                                                                                    ustar   rodrigo                         rodrigo                                                                                                                                                                                                                #!/bin/bash
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


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     