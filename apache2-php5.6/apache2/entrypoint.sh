#!/bin/bash

# Permanent files
DIR_VOVO="/var/www/vovo"
DIR_HTML="/var/www/html"
DIR_APACHE="/etc/apache2"

mkdir -pv ${DIR_HTML}/css
mkdir -pv ${DIR_HTML}/img
mkdir -pv ${DIR_APACHE}/sites-available/

cp -v ${DIR_VOVO}/html/* ${DIR_HTML}/
cp -v ${DIR_VOVO}/html/css/* ${DIR_HTML}/css/
cp -v ${DIR_VOVO}/html/img/* ${DIR_HTML}/img/
cp -v ${DIR_VOVO}/conf/* ${DIR_APACHE}/
cp -v ${DIR_VOVO}/sites-available/* ${DIR_APACHE}/sites-available/

source /etc/apache2/envvars
#tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND 