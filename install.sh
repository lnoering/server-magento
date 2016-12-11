#!/bin/bash -       
#title          :install.sh
#description    :This script to install security/php/percona/nginx/hhvm/php-fpm/varnish/redis.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh install.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

sh ./security/install/security-i.sh
sh ./nginx/install/nginx-i.sh
sh ./php/install/php-i.sh
#configs do php
sh ./database/install/percona-i.sh
