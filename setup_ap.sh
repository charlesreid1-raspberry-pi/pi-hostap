#!/bin/bash
# 
# This script should be run as sudo
# Make sure you have run ./install_requirements.sh 

# install config files
cp dhcpd.conf /etc/dhcp/dhcpd.conf
cp isc-dhcp-server /etc/default/isc-dhcp-server
cp hostapd.conf /etc/hostapd/hostapd.conf

# bring down interface
ifconfig wlan0 down

# set up network interfaces
cp interfaces /etc/network/interfaces

## optional: enable forwarding packets from wifi to ethernet
#./open_firewall.sh

ifconfig wlan0 up

### # avoid logging in after every reboot
### update-rc.d hostapd enable
### update-rc.d isc-dhcp-server enable
### 
### # fire that mother up
### service hostapd start
### service isc-dhcp-server start

