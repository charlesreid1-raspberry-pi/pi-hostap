#!/bin/bash
# 
# This script should be run as sudo

# install requriements
./install_requirements.sh

# install config files
cp dhcpd.conf /etc/dhcp/dhcpd.conf
cp isc-dhcp-server /etc/default/isc-dhp-server
cp hostapd.conf /etc/hostapd/hostapd.conf

# bring down interface
sudo ifdown wlan0

# set up network interfaces
cp interfaces /etc/network/interfaces

## optional: enable forwarding packets from wifi to ethernet
#./open_firewall.sh

# fire that mother up
service isc-dhcp-server start
service hostapd start

# avoid logging in after every reboot
update-rc.d hostapd enable
update-rc.d isc-dhcp-server enable

