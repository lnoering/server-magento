#!/bin/bash -       
#title          :docker-i.sh
#description    :This script install docker
#author		 	:leonardo <lnoering@gmail.com>
#date           :20180123
#version        :0.1    
#usage		 	:sh docker-i.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

BASEDIR=$(dirname "$0")

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce


find ${BASEDIR%/*}/config/ -name "*.sh" -exec sh {} \;