#!/bin/bash
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

