#!/bin/sh

rm -f /etc/udev/rules.d/70-persistent-net.rules

cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
HWADDR=52:54:00:12:34:56
DEVICE="eth0"
BOOTPROTO="static"
ONBOOT="yes"
TYPE="Ethernet"
IPADDR=172.16.64.55
NETMASK=255.255.255.0
GATEWAY=172.16.64.254
EOF
