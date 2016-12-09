#!/bin/bash -       
#title          :security-i.sh
#description    :This script exec security scripts.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh security-i.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

find ../config/ -name "*.sh" -exec sh {} \;

find ./ -name "*.sh" -not -name "$(basename $0)" -exec sh {} \;
