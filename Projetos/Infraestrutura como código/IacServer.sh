#!/bin/bash

echo "Atualizando server"

apt install upgrade
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicação"
cd /temp
wget https://github.com/leanluizz/Linux.zip
unzip Linux.zip
cd linux-site-dio
cp -R * /var/www/html/
