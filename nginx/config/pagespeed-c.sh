#!/bin/bash -       
#title          :pagespeed-c.sh
#description    :This script create dir to pagespeed use for cache.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh pagespeed-c.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

BASEDIR=$(dirname "$0")

sudo mkdir -p /var/cache/ngx_pagespeed_cache

sudo chown -R nobody:nobody /var/cache/ngx_pagespeed_cache

mv ${BASEDIR}/pagespeed.conf /etc/nginx/default.d/