#!/bin/bash

sudo apt-get install -y \
molly-guard \
terminator \
sshpass \
screen \
ntpdate

sudo ntpdate pool.ntp.org
sudo sed -i 's/#ALWAYS_QUERY_HOSTNAME=true/ALWAYS_QUERY_HOSTNAME=true/' /etc/molly-guard/rc

