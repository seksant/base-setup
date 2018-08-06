#!/bin/bash

sudo apt-get install -y \
molly-guard \
terminator \
sshpass \
screen \
ntpdate \
curl \
mysql-server

#Sync time
sudo ntpdate pool.ntp.org

#Setup molly-guard
sudo sed -i 's/#ALWAYS_QUERY_HOSTNAME=true/ALWAYS_QUERY_HOSTNAME=true/' /etc/molly-guard/rc

#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
