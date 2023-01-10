#!/bin/bash


# Variable Declaration
PACKAGE = "httpd wget unzip"
SVC = "httpd"
URL= "https://www.toop late.com/zip-templates/2098_health.zip"
ART_NAME = "2098_health"
TEMP_DIR = "/tmp/webfiles"

sudo apt install $PACKAGE -y

sudo systemctl start $SVC
sudo systemctl enable $SVC

echo "------------------------------------------------------------"

mkdir -p $TEMP_DIR
cd $TEMP_DIR


wget $1 /dev/null
unzip $2.zip /dev/null
sudo cp -r $2/* /var/www/html


systemctl restart $SVC

rm -rf $TEMP_DIR
