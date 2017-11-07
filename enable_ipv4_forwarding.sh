#!/bin/bash

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

# start translation now
sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
