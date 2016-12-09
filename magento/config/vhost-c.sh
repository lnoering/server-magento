#!/bin/bash -       
#title          :percona-i.sh
#description    :This script to set vhost url.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh percona-i.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

read -p "Informe a URL da loja : " URL_LOJA

#todo - validar se existe o arquivo.
sudo sed -i -e 's/magento.local.com/'"$URL_LOJA/g"'' ./magento.conf

mv ./magento.conf /etc/nginx/conf.d/"$URL_LOJA".conf
