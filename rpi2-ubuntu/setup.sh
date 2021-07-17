#!/bin/bash

# DNS setting
rm /etc/resolv.conf
echo nameserver 1.1.1.1 > /etc/resolv.conf

# Enable ssh
touch /boot/ssh

# Packages installation/removal
apt-get update
apt-get install -y docker.io
apt-get remove -y --purge snapd
