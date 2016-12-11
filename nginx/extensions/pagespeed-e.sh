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
BASEDIR=$(dirname "$0")
NPS_VERSION=1.10.33.4

wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip -O ${BASEDIR%/*/*}/download/ngx_pagespeed-release-${NPS_VERSION}-beta.zip
unzip -d ${BASEDIR%/*/*}/download/ ${BASEDIR%/*/*}/download/ngx_pagespeed-release-${NPS_VERSION}-beta.zip

#wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz -O psol-${NPS_VERSION}.tar.gz -P .${BASEDIR%/*/*}/download/
wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz -O ${BASEDIR%/*/*}/download/psol-${NPS_VERSION}.tar.gz
tar xzvf ${BASEDIR%/*/*}/download/psol-${NPS_VERSION}.tar.gz -C ${BASEDIR%/*/*}/download/ngx_pagespeed-release-${NPS_VERSION}-beta/ # extracts to psol/