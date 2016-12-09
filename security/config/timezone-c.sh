#!/bin/bash -       
#title          :timezone-c.sh
#description    :This script set timezone
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh timezone-c.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

#listar timezones
#sudo timedatectl list-timezones

#setar timezone
sudo timedatectl set-timezone America/Sao_Paulo

sudo timedatectl