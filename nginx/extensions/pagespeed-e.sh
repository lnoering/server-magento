#!/bin/bash -       
#title          :pagespeed-e.sh
#description    :This script get pagespeed for nginx.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh pagespeed-e.sh
#notes          : 
#bash_version   :4.2.46(1)-release
#==============================================================================

NPS_VERSION=1.10.33.4
wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip -O release-${NPS_VERSION}-beta.zip -P ${BASEDIR%/*/*}/download
unzip ${BASEDIR%/*/*}/download/release-${NPS_VERSION}-beta.zip

wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz -P ${BASEDIR%/*/*}/download/ngx_pagespeed-release-${NPS_VERSION}-beta
tar -xzvf ${BASEDIR%/*/*}/download/${NPS_VERSION}.tar.gz  # extracts to psol/