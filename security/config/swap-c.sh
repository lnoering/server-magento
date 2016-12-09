#!/bin/bash -       
#title          :swap-c.sh
#description    :This script create folder of swap
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh swap-c.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

#Advice about the best size for a swap space varies significantly depending on the source consulted. Generally, 
#an amount equal to or double the amount of RAM on your system is a good starting point.

sudo fallocate -l 1G /swapfile

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'