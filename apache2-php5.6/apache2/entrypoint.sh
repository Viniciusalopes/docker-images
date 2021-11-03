#!/bin/bash

# Permanent files
DIR_VOVO="/var/www/vovo"
DIR_HTML="/var/www/html"
DIR_APACHE="/etc/apache2"
ln -sfv ${DIR_VOVO}/html/* ${DIR_HTML}/
ln -sfv ${DIR_VOVO}/conf/* ${DIR_APACHE}/
ln -sfv ${DIR_VOVO}/sites-available/* ${DIR_APACHE}/sites-available/

source /etc/apache2/envvars
#tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND 