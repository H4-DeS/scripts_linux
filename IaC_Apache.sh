#!/bin/bash

set -x
cd /home/gonzales

sudo update
sudo upgrade

echo "Instalando Apache2"

apt install apache2 -y
rm /var/www/html/index.html

echo "Descompactando e transferindo conteúdo para servidor web"

apt install unzip

wget -P /tmp http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip /tmp/main.zip -d /tmp
sudo cp -r /tmp/linux-site-dio-main/* /var/www/html
rm /tmp/linux-site-dio-main
rm /tmp/main.zip

set +x
