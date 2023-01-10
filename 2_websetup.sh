#!/bin/bash


sudo apt install wget unzip httpd -y

sudo systemctl start httpd
sudo systemctl enable httpd

echo "------------------------------------------------------------"

mkdir -p /tmp/webfiles
cd /tmp/webfiles


wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip
sudo cp -r 2098_health/* /var/www/html


systemctl restart httpd

rm -rf /tmp/webfiles
