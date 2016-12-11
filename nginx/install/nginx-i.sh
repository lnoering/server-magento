#!/bin/bash -       
#title          :nginx-i.sh
#description    :This script build nginx.
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh nginx-i.sh
#notes          :
#bash_version   :4.2.46(1)-release
#==============================================================================

#http://nginx.org/en/linux_packages.html
#see pagespeed 
#https://media-glass.es/2015/02/14/nginx-ngx_pagespeed-centos-7/
#https://www.digitalocean.com/community/tutorials/how-to-add-ngx_pagespeed-to-nginx-on-centos-7 

BASEDIR=$(dirname "$0")

sudo yum install centos-release-scl

sudo yum install devtoolset-3-gcc-c++ devtoolset-3-binutils
sudo yum install wget curl unzip gcc-c++ pcre-devel zlib-devel openssl openssl-devel GeoIP GeoIP-devel

find ${BASEDIR%/*}/extensions/ -name "*.sh" -exec sh {} \;

##PS_NGX_EXTRA_FLAGS="--with-cc=/opt/rh/devtoolset-3/root/usr/bin/gcc"

NGINX_VERSION=1.8.0
wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz -P ${BASEDIR%/*/*}/download
tar -xvzf ${BASEDIR%/*/*}/download/nginx-${NGINX_VERSION}.tar.gz

${BASEDIR%/*/*}/download/nginx-${NGINX_VERSION}/configure \
--add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta \
--add-module=$HOME/echo-nginx-module-0.46 \
--prefix=/etc/nginx \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--pid-path=/var/run/nginx.pid \
--lock-path=/var/run/nginx.lock \
--http-client-body-temp-path=/var/cache/nginx/client_temp \
--http-proxy-temp-path=/var/cache/nginx/proxy_temp \
--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp \
--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp \
--http-scgi-temp-path=/var/cache/nginx/scgi_temp \
--user=nginx \
--group=nginx \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_addition_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_flv_module \
--with-http_mp4_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_random_index_module \
--with-http_secure_link_module \
--with-http_stub_status_module \
--with-http_auth_request_module \
--with-mail \
--with-mail_ssl_module \
--with-file-aio \
--with-http_spdy_module \
--with-http_geoip_module \
--with-cc=/opt/rh/devtoolset-3/root/usr/bin/gcc


make --directory=${BASEDIR%/*/*}/download/nginx-${NGINX_VERSION}
make --directory=${BASEDIR%/*/*}/download/nginx-${NGINX_VERSION} install

find ${BASEDIR%/*}/config/ -name "*.sh" -exec sh {} \;