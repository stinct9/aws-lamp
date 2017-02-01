#!/bin/bash

#Instructions to use this script 
#
#chmod +x SCRIPTNAME.sh
#
#sudo ./SCRIPTNAME.sh

echo "###################################################################################"
echo "Step 3 Installation will start now......."
echo "###################################################################################"

groups

sudo chown -R root:www /var/www

sudo chmod 2775 /var/www

find /var/www -type d -exec sudo chmod 2775 {} \;

find /var/www -type f -exec sudo chmod 0664 {} \;

echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php


echo "###################################################################################"
echo "Exiting, please login again"
echo "###################################################################################"

exit