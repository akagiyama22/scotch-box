#!/bin/bash

################################
# php upgrade to 7.0
################################
sudo apt-get -y update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get -y install php7.0
sudo apt-get -y update
sudo apt-get -y install php7.0-mysql libapache2-mod-php7.0
sudo a2dismod php5
sudo a2enmod php7.0
sudo apachectl restart

################################
# mbstring
################################
sudo apt-get -y install php-mbstring
sudo service apache2 restart
