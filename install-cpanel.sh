#!/bin/bash

# Change to the home directory
cd /home

# Download and install cPanel
curl -o latest -L https://securedownloads.cpanel.net/latest
sudo sh latest >> var/log/installation.log
tail -f installation.log

