#!/usr/bin/env bash
sudo apt-get install -y apache2
sudo apt-get install -y php5
sudo apt-get install -y git

sudo rm -rf /var/www/html
sudo ln -s /vagrant /var/www/html

echo "date.timezone = 'America/Sao_Paulo'" >> /etc/php.ini

sudo a2enmod rewrite

sudo service apache2 restart

rm -rf /vagrant/app/tmp
mkdir /vagrant/app/tmp
mkdir /vagrant/app/tmp/cache
mkdir /vagrant/app/tmp/cache/models
mkdir /vagrant/app/tmp/cache/persistent
mkdir /vagrant/app/tmp/logs
sudo chmod -R 777 /vagrant/app/tmp