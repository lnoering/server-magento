#!/bin/bash -       
#title          :firewall-i.sh
#description    :This script install firewall
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh firewall-i.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

#https://www.digitalocean.com/community/tutorials/additional-recommended-steps-for-new-centos-7-servers

#iniciar o firewall
sudo systemctl start firewalld

sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --permanent --add-service=smtp

#Para ver todos os serviços adicionais que podem ser ativados por nome, tipo.
#sudo firewall-cmd --get-services

#listar todos que foram incluidos
sudo firewall-cmd --permanent --list-all

sudo firewall-cmd --reload

sudo systemctl enable firewalld