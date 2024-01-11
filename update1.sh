#!/bin/bash
echo '[Unit]
Description=Run cPanel installation script

[Service]
Type=simple
ExecStart=/home/install_cpanel.sh

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/cpanel-install.service

systemctl daemon-reload
systemctl start cpanel-install.service
systemctl enable cpanel-install.service


