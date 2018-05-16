#!/bin/bash -       
#title          :user-c.sh
#description    :This script add user and remove root to access with ssh
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh user-c.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

#https://www.digitalocean.com/community/tutorials/initial-server-setup-with-centos-7

#criando usuário
adduser leonardo

#setar a senha do usuário
passwd leonardo

#adicionar usuário ao grupo wheel para ter permissão de usar o SUDO
gpasswd -a leonardo wheel

#habilitar grupo wheel
sudo sed -i -e 's/# %wheel  ALL=(ALL)       ALL/%wheel  ALL=(ALL)       ALL/g' /etc/sudoers

#tirar a permissão de loguin com o usuário root
sudo sed -i -e 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
#permitir login por senha
sudo sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

systemctl reload sshd
