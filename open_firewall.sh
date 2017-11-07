#!/bin/bash
#
# allow forwarding packets from wlan0 to eth0 interface
# (if providing "internet" to wifi network via ethernet cable)

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i wlan0 -o eth0 -j ACCEPT
