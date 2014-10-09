#!/usr/bin/env bash
sudo su -
yum install httpd -y
yum install php -y
yum install git -y

mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf-dist
cp /vagrant/vagrant/httpd.conf.default /etc/httpd/conf/httpd.conf
mv /etc/php.ini /etc/php.ini-dist
cp /vagrant/vagrant/php.ini.default /etc/php.ini

service httpd start
sudo chkconfig httpd on

rm -rf /vagrant/app/tmp
mkdir /vagrant/app/tmp
mkdir /vagrant/app/tmp/cache
mkdir /vagrant/app/tmp/cache/models
mkdir /vagrant/app/tmp/cache/persistent
mkdir /vagrant/app/tmp/logs
chmod -R 777 /vagrant/app/tmp

rm -rf /vagrant/app/Model/Datasource/Waferpie.php
rm -rf /home/vagrant/waferpie-cakephp-datasource/
git clone https://github.com/s2way/waferpie-cakephp-datasource.git
cp /home/vagrant/waferpie-cakephp-datasource/Waferpie.php /vagrant/app/Model/Datasource/Waferpie.php
