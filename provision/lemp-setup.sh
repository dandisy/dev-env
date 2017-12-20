#!/bin/bash
#export DEBIAN_FRONTEND=noninteractive

DBPASSWD=admin

echo "Provisioning DandiSy-LEMP virtual machine..."

# Update ubuntu repositories
apt-get update

# Nginx
echo "Installing Nginx"
apt-get install nginx -y > /dev/null

# PHP
echo "Updating PHP repository"
apt-get install python-software-properties build-essential -y > /dev/null
add-apt-repository ppa:ondrej/php5 -y > /dev/null
apt-get update > /dev/null

echo "Installing PHP"
apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null

echo "Installing PHP extensions"
apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null

# MySQL 
echo "Preparing MySQL"
apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"

echo "Installing MySQL"
apt-get install mysql-server -y > /dev/null

# Nginx Configuration
echo "Configuring Nginx"
cp /var/www/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

rm -rf /etc/nginx/sites-available/default

# Restart Nginx for the config to take effect
service nginx restart > /dev/null


# Installing Tools
echo "Installing Git"
apt-get install git -y > /dev/null

# Adding NodeJS from Nodesource. This will Install NodeJS Version 5 and npm
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get install nodejs -y > /dev/null

# Installing Bower and Gulp
npm install -g bower gulp grunt-cli

# Install Composer
curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer


echo "Finished DandiSy-LEMP provisioning."