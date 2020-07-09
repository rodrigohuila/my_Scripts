#!/bin/bash
#Programa para convertir archivos pdf a texto 
#Autor: Rodrigo Huila - @RodrigoHuila

dirorigen=$(pwd)
n=0
arregloNombres=()
nomb=1
ruta=""

##Funciones
#Función Cabecera del programa
cabecera_programa () {
   clear
   echo "##############################################################"
   echo "########### New Distro ......................#################"
   echo "##############################################################"
   echo -e "\n"
}

cabecera_programa
read -p "Digíte la ruta dodne se encuentra la partición DATOS: " ruta

#Elimina las carpetas si información de la nueva Distro
sudo apt install vim -y
rm -i /home/rodrigo/Desktop
rm -i /home/rodrigo/Documents
rm -i /home/rodrigo/Pictures
rm -i /home/rodrigo/Videos
rm -i /home/rodrigo/Music
rm -i /home/rodrigo/Downloads

#Crea acceso a las carpetas con la información guardada en la partición DATOS
ln -s /$ruta/Desktop /home/rodrigo/Desktop
ln -s /$ruta/Documents /home/rodrigo/Documents
ln -s /$ruta/Pictures /home/rodrigo/Pictures
ln -s /$ruta/Videos /home/rodrigo/Videos
ln -s /$ruta/Music /home/rodrigo/Music
ln -s /$ruta/Download /home/rodrigo/Download
ln -s /$ruta /home/rodrigo/$ruta


#Habilitar los accesos directos para que la distro los lea copiando las rutas compeltas previamente guardadas
cp /$ruta/user-dirs.dirs ~/.config/

#Copiar Aliases
cp ~/$ruta/aliases.zsh ~/$ruta/ohmyzsh/custom/


#instalar terminal zsh y dejarla como terminal por defecto
1.sudo apt-get install zsh -y
2.sudo apt-get install git-core -y
3.wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
4.sudo chsh -s $(which zsh)

#Instalar vim
sudo apt install vim -y

#Instalar VLC
cd ~/Download
sudo dpkg -i 'code_1.45.0-1588868285_amd64.deb'


#Reiniciar para que tome los cambios
#reboot
#cd ~/Downloads/$dirdestino


