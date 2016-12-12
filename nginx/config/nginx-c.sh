#!/bin/bash -       
#title          :nginx-c.sh
#description    :This script to set worker and enable nfinx in systemctl.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh nginx-c.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

BASEDIR=$(dirname "$0")

mv ${BASEDIR}/nginx /etc/init.d/
chmod +x /etc/init.d/nginx

chkconfig --add nginx
chkconfig --level 345 nginx on
#sudo chkconfig nginx on

systemctl daemon-reload

#To add the CentOS 7 EPEL repository, open terminal and use the following command
#sudo yum install epel-release

#Now that the Nginx repository is installed on your server, install Nginx using the following yum command:
#sudo yum install nginx

PROC=$(sudo grep "model name" /proc/cpuinfo | wc -l)
#PROC=cat /proc/cpuinfo | grep 'cpu cores' | grep -o '[0-9]*'
#PROC=sudo cat /proc/cpuinfo | grep 'cpu cores' | grep -o '[0-9]*'

sudo sed -i -e 's/worker_processes  4;/worker_processes  '"$PROC"';/g' ${BASEDIR}/nginx.conf

mkdir /etc/nginx/conf.d
mkdir /etc/nginx/default.d

sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
sudo mv ${BASEDIR}/nginx.conf /etc/nginx/nginx.conf

sudo systemctl enable nginx

#Nginx does not start on its own. To get Nginx running, type:
sudo systemctl start nginx

#If you are running a firewall, run the following commands to allow HTTP and HTTPS traffic:
#sudo firewall-cmd --permanent --zone=public --add-service=http 
#sudo firewall-cmd --permanent --zone=public --add-service=https
#sudo firewall-cmd --reload

#From the command line, you can find this a few ways. First, you can use the iproute2 tools to get your address by typing this:
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

#see https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-centos-7