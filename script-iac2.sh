#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando serviços..."

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando arquivo..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo..."

unzip main.zip

echo "Copiando arquivo..."

cd linux-site-dio-main

cp -R * /var/www/html


