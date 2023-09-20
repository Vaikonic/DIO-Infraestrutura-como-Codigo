#!/bin/bash

echo "Atualizando o servidor..."
pacman -Syu
pacman -S install apache2 -y
pacman -S install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.>
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


