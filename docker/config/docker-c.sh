#!/bin/bash -       
#title          :docker-c.sh
#description    :This script start the docker.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20180123
#version        :0.1    
#usage		 	:sh docker-c.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

sudo service docker start

chkconfig docker on

#grant access to user (to not use sudo)
#sudo usermod -aG docker $(whoami)
sudo usermod -aG docker leonardo