#!/bin/bash -       
#title          :phpformagento-e.sh
#description    :This script include php dependencies for magento
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh phpformagento-e.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

# php-curl is in php70w-common
sudo yum install php70w-mcrypt php70w-gd php70w-xml php70w-xmlrpc php70w-pecl-apcu
