#!/bin/bash

#Instructions to use this script 
#
#chmod +x SCRIPTNAME.sh
#
#sudo ./SCRIPTNAME.sh

echo "###################################################################################"
echo "Step 1 Installation will start now......."
echo "###################################################################################"

sudo yum update -y

sudo yum install -y httpd24 php56 mysql55-server php56-mysqlnd

sudo service httpd start

sudo chkconfig httpd on

chkconfig --list httpd

sudo groupadd www

sudo usermod -a -G www ec2-user

echo "###################################################################################"
echo "Exiting, please login again"
echo "###################################################################################"

exit