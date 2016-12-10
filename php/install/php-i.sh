#!/bin/bash -       
#title          :php-i.sh
#description    :This script install php7
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh php-i.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

BASEDIR=$(dirname "$0")

yum install epel-release
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm


yum install php70w


find ${BASEDIR%/*}/extensions/ -name "*.sh" -exec sh {} \;