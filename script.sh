#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando apache2 e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e descompactando arquivo..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para pasta padrão do apache2..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script finalizado!!!"
