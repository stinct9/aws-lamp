#!/bin/bash

#Instructions to use this script 
#
#chmod +x SCRIPTNAME.sh
#
#sudo ./SCRIPTNAME.sh

echo "###################################################################################"
echo "Step 4 Installation will start now......."
echo "###################################################################################"

rm /var/www/html/phpinfo.php

sudo service mysqld start

sudo mysql_secure_installation

sudo chkconfig mysqld on


sudo yum-config-manager --enable epel

sudo yum install -y phpMyAdmin

sudo sed -i -e 's/127.0.0.1/2405:204:2001:f547:695b:1c32:d848:2b69/g' /etc/httpd/conf.d/phpMyAdmin.conf
Restart the Apache web server

sudo service httpd restart

sudo service mysqld restart




echo "###################################################################################"
echo "Exiting, please login again"
echo "###################################################################################"

exit