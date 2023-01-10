#!/bin/bash


# Variable Declaration
PACKAGE = "httpd wget unzip"
SVC = "httpd"
URL= "https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME = "2098_health"
TEMP_DIR = "/tmp/webfiles"

sudo apt install $PACKAGE -y

sudo systemctl start $SVC
sudo systemctl enable $SVC

echo "------------------------------------------------------------"

mkdir -p $TEMP_DIR
cd $TEMP_DIR


wget $URL
unzip $ART_NAME.zip
sudo cp -r $ART_NAME/* /var/www/html


systemctl restart $SVC

rm -rf $TEMP_DIR
