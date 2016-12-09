#!/bin/bash -       
#title          :database-user-c.sh
#description    :This script to create database/user.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh database-user-c.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

#https://www.digitalocean.com/community/tutorials/como-criar-um-novo-usuario-e-conceder-permissoes-no-mysql-ptCREATE DATABASE menagerie;
#mysql -u root -p

read -p "Nome do Banco de Dados ?" NAMEDATABASE

echo "CREATE DATABASE $NAMEDATABASE;" | mysql -u root -p

read -p "Nome do Usuário para o Banco de Dados [ $NAMEDATABASE ] ?" NAMEUSER
read -p "Senha do Usuário [ $NAMEUSER ] para o Banco de Dados [ $NAMEDATABASE ] ?" PASSUSER


echo "CREATE USER $NAMEUSER@localhost IDENTIFIED BY '$PASSUSER';" | mysql -u root -p

#GRANT ALL PRIVILEGES ON * . * TO 'novousuario'@'localhost';
#apenas na tabela informada (NAMEDATABASE) [create-database-percona.sh]
echo "GRANT CREATE,DELETE,INSERT,SELECT,UPDATE ON $NAMEDATABASE . * TO '$NAMEUSER'@'localhost';" | mysql -u root -p

echo "FLUSH PRIVILEGES;" | mysql -u root -p