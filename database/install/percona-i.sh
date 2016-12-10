#!/bin/bash -       
#title          :percona-i.sh
#description    :This script to build and install percona.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh percona-i.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

#see https://www.digitalocean.com/community/tutorials/how-to-install-a-fresh-percona-server-or-replace-mysql

BASEDIR=$(dirname "$0")

yum install http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm

yum install Percona-Server-client-56 Percona-Server-server-56

mkdir /etc/my.cnf.d

service mysql start

find ${BASEDIR%/*}/config/ -name "*.sh" -exec sh {} \;