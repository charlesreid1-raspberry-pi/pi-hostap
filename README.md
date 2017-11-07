# pi-hostap

Scripts for turning a Raspberry Pi into a wifi access point.

## Setup

To get everything set up and run it all, run:

```
$ ./setup_ap.sh
```

## Other scripts

These scripts are called from `setup_ap.sh` and should not be run directly:
* `install_requirements.sh` - apt-get install for software
* `enable_ipv4_forwarding.sh` - enables ipv4 forwarding of packets
* `open_firewall.sh` - enables packet forwarding from wlan0 to eth0 (optional, for providing internet)

## Config files

The following configuration files are installed by this script:
* `dhcpd.conf` - dhcp daemon config file
* `hostapd.conf` - hostapd config file
* `interfaces` - network interfaces file
* `isc-dhcp-server` - config file for ISC DHCP server

