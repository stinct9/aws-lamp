#!/bin/bash

#Instructions to use this script 
#
#chmod +x SCRIPTNAME.sh
#
#sudo ./SCRIPTNAME.sh

echo "###################################################################################"
echo "Step 2 Installation will start now......."
echo "###################################################################################"

sudo groupadd www

sudo usermod -a -G www ec2-user


echo "###################################################################################"
echo "Exiting, please login again"
echo "###################################################################################"

exit