#!/bin/bash -       
#title          :ntp-i.sh
#description    :This script install ntp
#author		 	:leonardo <lnoering@gmail.com>
#date           :20161208
#version        :0.1    
#usage		 	:sh ntp-i.sh
#notes          :Now that you have your timezone set, we should configure NTP. This will allow your computer to stay in sync with other servers, 
#				:leading to more predictability in operations that rely on having the correct time.
#				:For NTP synchronization, we will use a service called ntp, which we can install from CentOS's default repositories:
#bash_version   :4.2.46(1)-release
#==============================================================================

sudo yum install ntp

sudo systemctl start ntpd
sudo systemctl enable ntpd