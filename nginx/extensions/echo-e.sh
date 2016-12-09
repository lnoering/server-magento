#!/bin/bash -       
#title          :echo-e.sh
#description    :This script get echo for nginx
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh echo-e.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

cd $HOME

wget http://github.com/agentzh/echo-nginx-module/archive/v0.46.tar.gz
tar xvzf v0.46.tar.gz